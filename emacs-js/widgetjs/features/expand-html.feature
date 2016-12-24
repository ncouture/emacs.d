Feature: Expand HTML
  Background: 
    Given the buffer is empty
    When I turn on js2-mode
    And I turn on widgetjs-mode

  Scenario: Simple HTML expansion
    When I insert: 
    """
    (div ((ul ((li "foo")))))
    """
    And I press "C-c C-w h"
    Then I should see:
    """
    html.div(
        html.ul(
            html.li(
                'foo'
            )
        )
    );
    """

  Scenario: HTML expansion with single lists for children
    When I insert: 
    """
    (div (ul (li (a "foo"))))
    """
    And I press "C-c C-w h"
    Then I should see:
    """
    html.div(
        html.ul(
            html.li(
                html.a(
                    'foo'
                )
            )
        )
    );
    """

  Scenario: classes and ids
    When I insert: 
    """
    (div.foo@bar ((ul.nav ((li.active (a.current "foo"))))))
    """
    And I press "C-c C-w h"
    Then I should see:
    """
    html.div(
        {klass: 'foo',id: 'bar'}, 
        html.ul(
            {klass: 'nav'}, 
            html.li(
                {klass: 'active'}, 
                html.a(
                    {klass: 'current'}, 
                    'foo'
                )
            )
        )
    );
    """
