#!/usr/bin/evn osascript

tell application "Microsoft To Do"

  activate

end tell

tell application "System Events"

  tell process "Microsoft To Do"
    tell menu bar 1
      tell menu bar item "文件"
        tell menu "文件"

          -- 操作1: 「タスク」グループを選択する
          pick menu item "打开列表"
          tell menu item "打开列表"
            tell menu "打开列表"
              pick menu item "任务"
            end tell
          end tell

        end tell
      end tell
    end tell

    -- 操作2: 選択した内容を「タスク」というリストにいれる。
    delay 1 
    tell window 1
      tell splitter group 1
        tell text field 1
          -- 環境変数から取る
          -- https://github.com/pilotmoon/PopClip-Extensions#example-applescript-file
          set value to "{popclip text}"
        end
        click button 2
      end tell
    end tell
  end tell
end tell

-- 実行コマンド: osascript  todo.applescript

