<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Models\Project;
use App\Models\ProjectAppartment;
use App\Models\ProjectShop;
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

        $count = $input['appartments'] + $input['shops'];
        $units = $input['units'];
        if ($units != $count) {
            return $this->sendError('Validation Error.', 'No of units must be equal to no of appartments + no of shops.');
        }
        
        
        $count = $input['studio_count'] + $input['onebed_count'];
        $appartments = $input['appartments'];
        if ($appartments != $count) {
            return $this->sendError('Validation Error.', 'No of apartments must be equal to no of studio + no of bed apartments.');
        }

        $count = $input['lower_ground_count'] + $input['ground_count'] + $input['first_floor_count'];
        $shops = $input['shops'];
        if ($shops != $count) {
            return $this->sendError('Validation Error.', 'No of shops must be equal to no of lower ground floor shops + no of ground floor shops + no of first floor shops.');
        }

        $input = $request->all();
        $id = Project::create([
            'name' => $input['name'], 'units' => $input['units'],
            'appartments' => $input['appartments'], 'studio_count' => $input['studio_count'],
            'studio_deluxe_count' => $input['studio_deluxe_count'], 'studio_executive_count' => $input['studio_executive_count'],
            'onebed_count' => $input['onebed_count'], 'onebed_deluxe_count' => $input['onebed_deluxe_count'],
            'onebed_executive_count' => $input['onebed_executive_count'], 'shops' => $input['shops'],
            'lower_ground_count' => $input['lower_ground_count'], 'ground_count' => $input['ground_count'],
            'first_floor_count' => $input['first_floor_count'], 'floors' => $input['floors'],
        ])->id;


        if ($input['appartments']) {
            for ($i = 0; $i < $input['studio_deluxe_count']; $i++) {
                ProjectAppartment::create(['project_id' => $id, 'studio_deluxe_sqft' => $input['studio_deluxe_sqft']]);
            }


            for ($i = 0; $i < $input['studio_executive_count']; $i++) {
                ProjectAppartment::create(['project_id' => $id, 'studio_executive_sqft' => $input['studio_executive_sqft']]);
            }

            for ($i = 0; $i < $input['onebed_deluxe_count']; $i++) {
                ProjectAppartment::create(['project_id' => $id, 'onebed_deluxe_sqft' => $input['onebed_deluxe_sqft']]);
            }

            for ($i = 0; $i < $input['onebed_executive_count']; $i++) {
                ProjectAppartment::create(['project_id' => $id, 'onebed_executive_sqft' => $input['onebed_executive_sqft']]);
            }
        }

        if ($input['shops']) {
            for ($i = 0; $i < $input['lower_ground_count']; $i++) {
                ProjectShop::create(['project_id' => $id, 'lower_ground_sqft' => $input['lower_ground_sqft']]);
            }

            for ($i = 0; $i < $input['ground_count']; $i++) {
                ProjectShop::create(['project_id' => $id, 'ground_sqft' => $input['ground_sqft']]);
            }

            for ($i = 0; $i < $input['first_floor_count']; $i++) {
                ProjectShop::create(['project_id' => $id, 'first_floor_sqft' => $input['first_floor_sqft']]);
            }
        }





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
        return $this->sendResponse($destroy, 'Project deleted successfully.');
    }
    
    
    
    /**
     * Project unit data retrieve .
     */
    public function unitlist(string $id)
    {
        $data = [];
        $appartment = ProjectAppartment::where(['project_id' => $id])->get();
        $count = count($appartment);
        for($i=0; $i< $count; $i++){
            if($appartment[$i]['studio_deluxe_sqft'] != NULL){
                $data[$i]['Apartment id'] = $appartment[$i]['id'];
                $data[$i]['Name'] = 'Studio';
                $data[$i]['Type'] = 'Deluxe';
                $data[$i]['SQFT'] = $appartment[$i]['studio_deluxe_sqft'];
            }
            elseif($appartment[$i]['studio_executive_sqft'] != NULL){
                $data[$i]['Apartment id'] = $appartment[$i]['id'];
                $data[$i]['Name'] = 'Studio';
                $data[$i]['Type'] = 'Executive';
                $data[$i]['SQFT'] = $appartment[$i]['studio_executive_sqft'];
            }
            elseif($appartment[$i]['onebed_deluxe_sqft'] != NULL){
                $data[$i]['Apartment id'] = $appartment[$i]['id'];
                $data[$i]['Name'] = '1-Bed';
                $data[$i]['Type'] = 'Deluxe';
                $data[$i]['SQFT'] = $appartment[$i]['onebed_deluxe_sqft'];
            }
            elseif($appartment[$i]['onebed_executive_sqft'] != NULL){
                $data[$i]['Apartment id'] = $appartment[$i]['id'];
                $data[$i]['Name'] = '1-Bed';
                $data[$i]['Type'] = 'Executive';
                $data[$i]['SQFT'] = $appartment[$i]['onebed_executive_sqft'];
            }
        }
        $shopData = [];
        $shop = ProjectShop::where(['project_id' => $id])->get();
        $count = count($shop);
        for($i=0; $i< $count; $i++){
            if($shop[$i]['lower_ground_sqft'] != NULL){
                $shopData[$i]['Shop id'] = $shop[$i]['id'];
                $shopData[$i]['Name'] = 'Lower Ground';
                $shopData[$i]['Type'] = 'Shop';
                $shopData[$i]['SQFT'] = $shop[$i]['lower_ground_sqft'];
            }
            elseif($shop[$i]['ground_sqft'] != NULL){
                $shopData[$i]['Shop id'] = $shop[$i]['id'];
                $shopData[$i]['Name'] = 'Ground Floor';
                $shopData[$i]['Type'] = 'Shop';
                $shopData[$i]['SQFT'] = $shop[$i]['ground_sqft'];
            }
            elseif($shop[$i]['first_floor_sqft'] != NULL){
                $shopData[$i]['Shop id'] = $shop[$i]['id'];
                $shopData[$i]['Name'] = 'First Floor';
                $shopData[$i]['Type'] = 'Shop';
                $shopData[$i]['SQFT'] = $shop[$i]['first_floor_sqft'];
            }
        }
        $merge = array_merge($data,$shopData);
        return $this->sendResponse($merge, 'Unit data.');
    }
}
