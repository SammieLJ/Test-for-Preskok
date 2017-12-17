<?php
/**
 * Created by PhpStorm.
 * User: StormTrooper
 * Date: 10.12.2017
 * Time: 19:23
 */

class Suspect
{
    // Suspect identification
    private $SuspectsNameAndSurname;

    //string sequences
    private $hair;
    private $eyes;
    private $race;

    //booleans, used when checking code
    private $hairMatchesToTheCase;
    private $eyesMatchesToTheCase;
    private $raceMatchesToTheCase;

    public function __construct($SuspectsNameAndSurname)
    {
        $this->SuspectsNameAndSurname = $SuspectsNameAndSurname;
    }

    /**
     * @return mixed
     */
    public function getSuspectsNameAndSurname()
    {
        return $this->SuspectsNameAndSurname;
    }

    /**
     * @param mixed $SuspectsNameAndSurname
     */
    public function setSuspectsNameAndSurname($SuspectsNameAndSurname)
    {
        $this->SuspectsNameAndSurname = $SuspectsNameAndSurname;
    }

    /**
     * @return mixed
     */
    public function getHair()
    {
        return $this->hair;
    }

    /**
     * @param mixed $hair
     */
    public function setHair($hair)
    {
        $this->hair = $hair;
    }

    /**
     * @return mixed
     */
    public function getEyes()
    {
        return $this->eyes;
    }

    /**
     * @param mixed $eyes
     */
    public function setEyes($eyes)
    {
        $this->eyes = $eyes;
    }

    /**
     * @return mixed
     */
    public function getRace()
    {
        return $this->race;
    }

    /**
     * @param mixed $race
     */
    public function setRace($race)
    {
        $this->race = $race;
    }

    /**
     * @return mixed
     */
    public function getHairMatchesToTheCase()
    {
        return $this->hairMatchesToTheCase;
    }

    /**
     * @param mixed $hairMatchesToTheCase
     */
    public function setHairMatchesToTheCase($hairMatchesToTheCase)
    {
        $this->hairMatchesToTheCase = $hairMatchesToTheCase;
    }

    /**
     * @return mixed
     */
    public function getEyesMatchesToTheCase()
    {
        return $this->eyesMatchesToTheCase;
    }

    /**
     * @param mixed $eyesMatchesToTheCase
     */
    public function setEyesMatchesToTheCase($eyesMatchesToTheCase)
    {
        $this->eyesMatchesToTheCase = $eyesMatchesToTheCase;
    }

    /**
     * @return mixed
     */
    public function getRaceMatchesToTheCase()
    {
        return $this->raceMatchesToTheCase;
    }

    /**
     * @param mixed $raceMatchesToTheCase
     */
    public function setRaceMatchesToTheCase($raceMatchesToTheCase)
    {
        $this->raceMatchesToTheCase = $raceMatchesToTheCase;
    }


}