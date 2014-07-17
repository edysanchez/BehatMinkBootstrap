<?php

use Behat\MinkExtension\Context\MinkContext;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;

/**
 * Behat context class.
 */
class FeatureContext extends MinkContext
{
    /**
     * Initializes context.
     *
     * Every scenario gets its own context object.
     * You can also pass arbitrary arguments to the context constructor through behat.yml.
     */
    public function __construct()
    {
    }

    /**
     * Wait the specified number of seconds
     *
     *@When /^I wait (\d*) seconds$/
     */
    public function iWait($timeToWait)
    {
        $session = $this->getSession();
        $session->wait(($timeToWait * 1000), false);
    }
}
