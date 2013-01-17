Shoes.app do
	background "#99F"
	stack do
		flow do
			@text = para "Tell me what it's like outside."
			@text.stroke = blue
		end
		title "How's the weather?"
		flow :width => 200 do
			@good = button("Great!") { alert "Awesome!  Bring an umbrella just for fun!" }
			@ok = button("Just So-so...") { alert "Maybe take an umbrella then?" }
			@bad = button("Horrible!") { alert "Stay inside!" }
		end
	end
	stack :margin => 0.1 do
		title "Processing Weather"
		@p = progress :width => 1.0
		@good.click do
			animate do |i|
				@p.fraction = (i % 100) / 50.0
				 if @p.fraction > 0.99
					alert "Awesome!  Bring an umbrella just for fun!"
					exit
				end
			end
		end
	end
end