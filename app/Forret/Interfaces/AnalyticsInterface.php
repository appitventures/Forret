<?php  namespace Forret\Interfaces;

interface AnalyticsInterface {
    public function userBreakdown();
    public function hitsByTime($unit,$units);
    public function signupsByTime($unit,$units);
    public function ratingsBreakdown($unit,$units, $rating= null);
    public function salesByTime($unit,$units);
    public function jobsByTime($unit,$units);
    public function processToWeek($days);
    public function usersMTD($monthStart);
    public function salesMTD($monthStart);
    public function contractorsMTD($monthStart);
    public function employersMTD($monthStart);
    public function jobsMTD($monthStart);
    public function hitsMTD($monthStart);
    public function mtdStats();
}