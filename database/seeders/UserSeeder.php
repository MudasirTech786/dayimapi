<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;
use App\Models\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $user_list = Permission::create(['name' => 'client.list']);
        $user_view = Permission::create(['name' => 'client.view']);
        $user_create = Permission::create(['name' => 'client.create']);
        $user_update = Permission::create(['name' => 'client.update']);
        $user_delete = Permission::create(['name' => 'client.delete']);


        $admin_role = Role::create(['name' => 'admin']);
        $admin_role -> givePermissionTo([
            $user_create,
            $user_view,
            $user_delete,
            $user_list,
            $user_update
        ]);
        $admin = User::create([
            'name' => 'Admin',
            'email' => 'admin@admin.com',
            'password' => bcrypt('12345')
        ]);

        $admin -> assignRole($admin_role); 
        $admin -> givePermissionTo([
            $user_create,
            $user_view,
            $user_delete,
            $user_list,
            $user_update
        ]);


        $user = User::create([
            'name' => 'User',
            'email' => 'user@user.com',
            'password' => bcrypt('12345')
        ]);

        $user_role = Role::create(['name' => 'client']);
        $user -> assignRole($user_role); 
        $user_role -> givePermissionTo([ 
            $user_list,
            $user_create,
            $user_view,
        ]);
    }
}
