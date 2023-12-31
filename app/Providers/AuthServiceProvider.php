<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;
use App\Permission;
use App\PermissionGroup;
use Illuminate\Support\Facades\Auth;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
         $this->registerPolicies();
         Gate::define('access', function ($user, $permissionName) {
            
            //first check if user is admin
            if($user->role_id != 1){
                return false;
            }
            //now get the permission record from database
            $permissionName = trim(strtolower($permissionName));
            $permission = Permission::where('name',$permissionName)->first();
            if(!$permission){
                return false;
            }
            //check if user is a super administrator, grant access if so.
            if($user->admin->admin_role_id==1){
                return true;
            }
            //now check if user's roles have this permission
            //get all roles for user

                if($user->admin->adminRole->permissions()->where('id',$permission->id)->first()){
                    return true;
                }

            return false;

        });

        //This gate checks to see if the user has at least one permission in the group.
        Gate::define('access-group', function ($user, $permissionGroupName) {
            
            //first check if user is admin
            if($user->role_id != 1){
                return false;
            }

            //check if user is a super administrator, grant access if so.
            if($user->admin->adminRole->id==1){
                return true;
            }

            //now get the permission record from database
            $permissionGroupName = trim(strtolower($permissionGroupName));

            //get the group record
            $permissionGroup = PermissionGroup::where('name',$permissionGroupName)->first();

            if(!$permissionGroup){
                return false;
            }

            //now loop over each permission and check if the user has any
            foreach($permissionGroup->permissions as $permission){

                  if($user->admin->adminRole->permissions()->where('id',$permission->id)->first()){
                        return true;
                    }


            }

            return false;

        });






    }
}
