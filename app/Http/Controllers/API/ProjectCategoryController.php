<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Models\Project;
use App\Models\ProjectSubCategory;
use App\Models\ProjectCategory;
use Illuminate\Support\Facades\Validator;
use App\Http\Resources\ProjectResource;

class ProjectCategoryController extends BaseController
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        $category = ProjectCategory::join(
            'project_sub_categories',
            'project_sub_categories.category_id',
            '=',
            'project_categories.id'
        )->get(["name", "sub_category_name"]);
        return $this->sendResponse($category, 'Project Category and Sub Category data retrieved successfully.');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $input = $request->all();

        $validator = Validator::make($input, [
            'name' => 'required',
            'sub_category_name' => 'required',
        ]);

        if ($validator->fails()) {
            return $this->sendError('Validation Error.', $validator->errors());
        }



        $input = $request->all();
        $id = ProjectCategory::create([
            'name' => $input['name']
        ])->id;

        $sub_category_name = $request->get('sub_category_name');

        foreach ($sub_category_name as $sub_category_name) {
            ProjectSubCategory::create(['sub_category_name' => $sub_category_name['sub_category_name'], 'category_id' => $id]);
        }
        return $this->sendResponse("Success", 'Category created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $input = $request->all();


        $category = ProjectCategory::find($id);
        $category->update([
            'name' => $input['name']
        ]);


        return $this->sendResponse('Success', 'Category Name Updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $destroy = ProjectCategory::find($id)->delete();
        return $this->sendResponse($destroy, 'Categpry deleted successfully.');
    }
}
