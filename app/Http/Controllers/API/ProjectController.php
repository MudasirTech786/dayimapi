<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Models\Project;
use Illuminate\Support\Facades\Validator;
use App\Http\Resources\ProjectResource;

class ProjectController extends BaseController
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $user = Project::all();
        return $this->sendResponse(ProjectResource::collection($user), 'Project data retrieved successfully.');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $input = $request->all();

        $validator = Validator::make($input, [
            'name' => 'required',
            'units' => 'required',
            'appartments' => 'required',
            'shops' => 'required',
            'floors' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->sendError('Validation Error.', $validator->errors());
        }

        $check = $input['appartments'] + $input['shops'];
        $shops = $input['units'];
        if ($shops != $check) {
            return $this->sendError('Validation Error.', 'No of units must be equal to no of appartments + no of shops.');
        }

        $input = $request->all();
        $input = Project::create($input);



        return $this->sendResponse('success', 'Project created successfully.');
    }



    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $input = $request->all();

        $check = $input['appartments'] + $input['shops'];
        $shops = $input['units'];
        if ($shops != $check) {
            return $this->sendError('Validation Error.', 'No of units must be equal to no of appartments + no of shops.');
        }

        $Project = Project::find($id);
        $Project->update($input);

        return $this->sendResponse('success', 'Project data updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $destroy = Project::find($id)->delete();
        return $this->sendResponse( $destroy, 'Project deleted successfully.');
    }
}
