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
            'no of units' => $this->units,
            'no of appartments' => $this->appartments,
            'no of shops' => $this->shops,
            // 'permissions' =>  $this -> getPermissionsViaRoles()->pluck('name') ?? []
        ];
    }
}
