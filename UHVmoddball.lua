function Wait(seconds)

  local start = os.time()
  repeat until os.time() > start + seconds

end

function Game(min,max)

	while true do

		print("Guess the Number betwen")
		print(min,"and",max)
		Ans = math.random(min,max)
		Guss = io.rewad("*n")
		if Guss == Ans then
			print("You win!")
			break
		end

		if not (Guss == Ans) then
			print("1 = Try again")
			TA = io.read("*n")
		end

		if not (TA == 1) then
			print("Correct answar:",Ans)
			break
		end

		for i=1,5 do
			print("")
		end
		Wait(1)

		Input = 0

	end
	for i=1,5 do
		print("")
	end
	Wait(1)

	Input = 0

end

function Calculate()

	print("1st number")
	one = io.read("*n")
	print("Symbol")
	print("(0 = -, 1 = +")
	print("2 = *, 3 = /)")
	Symbol = io.read("*n")
	print("2nt number")
	two = io.read("*n")

	if Symbol == 0 then
		Out = one-two
	end

	if Symbol == 1 then
		Out = one+two
	end

	if Symbol == 2 then
		Out = one*two
	end

	if Symbol == 3 then
		Out = one/two
	end

	print("")
	print(Out)
	Wait(1)

	Input = 0

end

function fileClient()

	os.execute("clear")
	print(os.execute("ls -A files-V4.3")) --BTW DON'T use spaces

	while not (command == "exit") do

    io.write("\n" .. user .. "@" .. dir .. " $:")
		command = io.read("*line")

    if command == ls then
		  os.execute("ls -A files-V4.3/" .. dir)
    end

	  if string.sub(command, 1, 2) == "cd" then
      dir = string.sub(command, 3, string.len(command))
    end

	end

end

function appStore()

	print(os.execute("ls -h apps-V4.3"))

end

user = "root"
r = 1
command = 0
dir = ""
users = {}
passwords = {}
userCount = 1

users[1] = "root"
passwords[1] = "password"

while r == 1 do

  os.execute("clear")
	print("Hello,")
	Wait(1)
	print("press enter to")
	print("continue.")
	io.read()

	while true do

		print("1:Launch")
		print("2:Tools")
		print("3:Files")
		print("4:Shutdown")
		Input = io.read("*n")

		if Input == 1 then

			print("1:Calculator")
			print("2:Guess")
			print("3:App Store")
			print("0:back")
			Input = io.read("*n")

			if Input == 1 then

				print("Calculator:")
				print("")
				Calculate()
			end

			if Input == 2 then

				print("Game:")
				print("")
				Game(1,10)
			end

			if Input == 3 then

				appStore()

			end

		end

		if Input == 2 then

			print("1:Time")
			print("2:Info")
      print("3:New user")
			print("0:back")
			Input = io.read("*n")

			if Input == 1 then

				print(os.date())
				Wait(1)

				Input = 0

			end

			if Input == 2 then

				print("this program was writen compoletoly by ben1jen,\nit has 265 lines of code")

				Input = 0

			end

      if Input == 3 then

        io.write("username:")
        local usernm = io.read("*line")
        io.write("Password:")
        local passwd = io.read("*line")

        users[userCount + 1] = usernm
        passwords[userCount + 1] = passwd

      end

		end

		if Input == 3 then

			fileClient()

		end

		if Input == 4 then

			print("1:Shutdown")
			print("2:Reboot")
			print("3:Sleep")
      print("4:Logout")
			print("0:back")
			Input = io.read("*n")

			if Input == 1 then

				r=0
				os.execute("clear")
				break

			end

			if Input == 2 then

				os.execute("clear")
				io.read()
				break

			end

			if Input == 3 then

				os.execute("clear")
				Wait(1)
				io.read()
				io.read()

			end

      if Input == 4 then

        for i = 1, userCount do
          io.write(i .. ":" .. users[i] .. "\n")
        end

        Input = io.read("*n")

        USER = users[Input]

      end

		end

	end

end
