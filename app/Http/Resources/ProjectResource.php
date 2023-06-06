<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ProjectResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'floors' => $this->floors,
            'no of units' => $this->units,
            'no of apartments' => $this->appartments,
            'no of studio apartments' => $this->studio_count,
            'no of deluxe studio apartments' => $this->studio_deluxe_count,
            'no of executive studio apartments' => $this->studio_executive_count,
            'no of 1 bed apartments' => $this->onebed_count,
            'no of deluxe 1 bed appartments' => $this->onebed_deluxe_count,
            'no of executive 1 bed appartments' => $this->onebed_executive_count,
            'no of shops' => $this->shops,
            'no of shops in lower ground' => $this->lower_ground_count,
            'no of shops at ground floor' => $this->ground_count,
            'no of shops at first floor' => $this->first_floor_count,          
            // 'permissions' =>  $this -> getPermissionsViaRoles()->pluck('name') ?? []
        ];
    }
}
