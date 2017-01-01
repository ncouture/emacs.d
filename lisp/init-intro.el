(setq nc/introduction "Welcome to Emacs!

This is a simple configuration packaged with the same structure in Steve Purcell's
 `emacs.d' (https://github.com/purcell/emacs.d)... so you'll be able to steal some of
 his init files to add more awesome stuff later!

Here are the two main modes I use, and how to start using them...


  Elpy, a well-rounded IDE for Python development.

    Quickstart:

        1. Install requirements

          $ pip install rope flake8 importmagic autopep8 yapf
        
        2. Start another instance of Emacs

        3. Verify configuration

          M-x elpy-config [RET]

        4. Hack away! (and get code completion, auto-indentation, snippet expansion,
           live code hinting, code navigation, inline documentation, refactoring
           functions, on-the-fly checks, virtualenv support, test runners, etc.)
           
      ref. https://github.com/jorgenschaefer/elpy



  Org-Mode, the most powerful organization tool made by men.

    Quickstart:

        

        1. Create a new task

          C-c c t [RET]
          <task name>

        2. Schedule a time to complete it

          C-c C-s

        3. Review your agenda

          C-a [SPACE]

        4. Start clocking!

          Put your cursor over a task in your agenda and type:

            C-c C-x i

        5. Stop the clock

            C-c o

      Before you can use the clocking functions without issue, you'll need to create a directory:

        $ mkdir ~/git/org

      now create a default clock-in task in your first org file:

        $ cat > ~/git/org/tasks.org
        ** Organization
        :PROPERTIES:
        :CLOCK_MODELINE_TOTAL: today
        :ID:       eb155a82-92b2-4f25-a3c6-0304591af2f9
        :END:
        $ _
      This will allow the automatic clock-out mechanism to find a task to which clock time that
      is not accounted for in other tasks.

      You can now punch-in when you start your workday:

        C-i

      and punch-out when you need to do something outside Emacs...

        C-o

      Thanks Bernt Hansen!

  ref. http://doc.norang.ca/org-mode.html


Now go and edit ~/.emacs.d/init.el and comment out the following lines to disable this introduction:

    (require 'init-intro)
    (nc/intro)
")


(defun nc/random-number-to-a-tenth ()
    (string-to-number
     (concat
      "0.0"
      (int-to-string (random 9))
      (int-to-string (random 9)))))
 

(defun nc/write-intro (prompt-string interactive-string buf-name)
  (require 'cl)

  (switch-to-buffer buf-name)
  (sit-for 0.5)
  (setq prompt-string "<PRESS [RET] TO CONTINUE>")
  (setq interactive-string "PRESS RET... ")

  (dolist (char (append nc/introduction nil))
    (sit-for (nc/random-number-to-a-tenth))
    (if (char-equal char (string-to-char ""))
	(progn
	  (let (pt)
	    (setq pt (point))
	    (push-mark (point) nil t)
	    (insert prompt-string)
	    (read-event interactive-string)
	    (kill-region pt (point))))
      (insert (char-to-string char)))))

(defun nc/intro ()
  (interactive)
  (nc/write-intro
   "<PRESS [RET] TO CONTINUE>"
   "PRESS ENTER... "
   "*scratch*"))

(provide 'init-intro)
