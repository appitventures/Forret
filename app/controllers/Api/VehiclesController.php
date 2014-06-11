<?php namespace Controllers\Api;
use Air\InterRepos\Interfaces\VehicleInterface;

class VehiclesController extends BaseApiController{
    public function __construct(VehicleInterface $vehicle){
        $this->vehicle = $vehicle;
    }

    public function index(){
        $vehicles = $this->vehicle->all();
        return $vehicles;
    }

    public function store(){
        return $this->vehicle->createNew(Input::all());
    }

    public function show($id){
        return $this->vehicle->find($id);
    }

    public function update($id){
        return $this->vehicle->update($id,Input::all());
    }

    public function delete($id){
        return $this->vehicle->destroy($id);
    }
} 