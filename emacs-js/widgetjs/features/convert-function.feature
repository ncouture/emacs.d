Feature: Convert function definitions
  Background: 
    Given the buffer is empty
    And I insert: 
    """
    function foo(bar, baz) {
        return bar + baz;
    }
    """
    And I turn on js2-mode
    And I turn on widgetjs-mode

  Scenario: Convert to a property on `that`
    When I go to line "0"
    And I press "C-c C-w t"
    Then I should see:
    """
    that.foo = function(bar, baz) {
        return bar + baz;
    };
    """

  Scenario: Convert to a property on `my`
    When I go to line "0"
    And I press "C-c C-w m"
    Then I should see:
    """
    my.foo = function(bar, baz) {
        return bar + baz;
    };
    """
