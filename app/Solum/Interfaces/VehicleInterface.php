<?php  namespace Solum\Interfaces;

interface VehicleInterface {
    public function all();
    public function find($id);
    public function createNew($input);
    public function update($id,$input);
    public function destroy($id);
} 