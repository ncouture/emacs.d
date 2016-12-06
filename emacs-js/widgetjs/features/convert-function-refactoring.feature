Feature: Convert function definitions refactoring
  Background: 
    Given the buffer is empty
    And I insert: 
    """
    foo();
    function foo(bar, baz) {
        return bar + baz;
    }
    foo();
    """
    And I turn on js2-mode
    And I turn on widgetjs-mode

  Scenario: Convert to a property
    When I go to line "1"
    And I press "C-c C-w t"
    Then I should see:
    """
    that.foo();
    that.foo = function(bar, baz) {
        return bar + baz;
    };
    that.foo();
    """
