<?php

class DateFilter extends Filter
{
	//@param daysOld: how many days can be passed to be included in filter
	//Ex. If daysOld = 7, everything that is less than a week old is included
	private $interval;
    private $days;
    
	public function DateFilter($daysOld)
	{
        $this->days = $daysOld;
		$this->interval = new DateInterval('P'.$daysOld.'D');
	}

	//@Return: Returns a DateTime that is the earliest possible date to be included in the filter
	function createLimitDate()
	{
		$now = new DateTime();
		return $now->sub($this->interval);
	}
	
	//generates SQL code for checking date
	//Ex. WHERE limitDate > created... if > means before
	function genSQL()
	{
		$limitDate = $this->createLimitDate();
       
		return "'" . $limitDate->format('Y-m-d') . "' < uploaded_on";
	}

    function getDays()
    {
        return $this->days;
    }
    
    function getDaysWord()
    {
        $temp = $this->days;
        switch($temp)
        {
            case 1:
                return "Day";
                break;
            case 7:
                return "Week";
                break;
            case 30:
                return "Month";
                break;
            case 369:
                return "Year";
                break;
            case 36500:
                return "Century";
                break;
			case 100000: //newest
				return "New";
				break;
            default:
                return "DEFAULT";
                break;
        }
    }
}
?>