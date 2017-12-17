<?php
/**
 * Created by PhpStorm.
 * User: StormTrooper
 * Date: 10.12.2017
 * Time: 19:21
 */

//Include models file. This simple example doesn't have autoloading mechanism.
include 'Models\Suspect.php';
include 'Models\DNKModels.php';

// DNK string sequence
$DNKcodeToMatchString = 'HHHKLJ140L98IHYYYN';

//set arrays for DNK elements
$eyes = DNKModels::$Eyes;

$hair = DNKModels::$Hair;

$race = DNKModels::$Race;


// Fill Suspects 1,2,3 and 4
$Supect1 = new Suspect('Janez Novak');
$Supect1->setEyes($eyes['Green']);
$Supect1->setHair($hair['Black']);
$Supect1->setRace($race['Asian']);

$Supect2 = new Suspect('Vin Diesel');
$Supect2->setEyes($eyes['Brown']);
$Supect2->setHair($hair['Blond']);
$Supect2->setRace($race['Caucasian']);

$Supect3 = new Suspect('Guy Fawkes');
$Supect3->setEyes($eyes['Brown']);
$Supect3->setHair($hair['Black']);
$Supect3->setRace($race['Hispanic']);

$Supect4 = new Suspect('Perfect Suspect');
$Supect4->setEyes($eyes['Black']);
$Supect4->setHair($hair['Brown']);
$Supect4->setRace($race['Hispanic']);

//put all suspects into array
$Suspects = array($Supect1, $Supect2, $Supect3, $Supect4);

// check for suspect
foreach ($Suspects as $suspect) {
    echo PHP_EOL . 'Checking ... ' . $suspect->getSuspectsNameAndSurname() . PHP_EOL;

    // check for eyes
    if (strpos($DNKcodeToMatchString, $suspect->getEyes()) !== false) {
        $suspect->setEyesMatchesToTheCase(true);
        //echo 'NAŠEL!';
    } else {
        //echo 'Nič našel!';
    }

    // check for hair
    if (strpos($DNKcodeToMatchString, $suspect->getHair()) !== false) {
        $suspect->setHairMatchesToTheCase(true);
        //echo 'NAŠEL!';
    } else {
        //echo 'Nič našel!';
    }

    // check for hair
    if (strpos($DNKcodeToMatchString, $suspect->getRace()) !== false) {
        $suspect->setRaceMatchesToTheCase(true);
        //echo 'NAŠEL!';
    } else {
        //echo 'Nič našel!';
    }

    // name the suspect if any
    if ($suspect->getEyesMatchesToTheCase() == true && $suspect->getHairMatchesToTheCase() == true && $suspect->getRaceMatchesToTheCase() == true) {
        echo PHP_EOL . "Suspect is identified as " . $suspect->getSuspectsNameAndSurname();
    }
}