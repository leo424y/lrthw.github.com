def leo_and_grace(leo_says, grace_says)
  puts "Leo: #{leo_says} "
  puts "Grace: #{grace_says} "
end

puts 'We can just give the function numbers directly:'
leo_and_grace('baby', 'baby,baby!')

leo_says = 10
grace_says = 50
leo_and_grace(leo_says, grace_says)

leo_says = true
grace_says = false
leo_and_grace('leo_says' + leo_says.to_s + '20', 'grace_says' + grace_says.to_s + '6')

leo_says = 'mom'
grace_says = 'dad'
leo_and_grace(leo_says, grace_says)

leo_and_grace('grace_says:' + grace_says, 'leo_says:' + leo_says)

leo_says = 9.0
grace_says = 81
leo_and_grace(leo_says * grace_says, leo_says**grace_says)
leo_and_grace(leo_says > grace_says, leo_says < grace_says)
leo_and_grace(leo_says += grace_says, leo_says == grace_says)
leo_and_grace(!leo_says, !!!!leo_says)
leo_and_grace(!leo_says, !!!!leo_says)
leo_and_grace('why?' + leo_says.eql?(9).to_s, leo_says.eql?(9.0))

leo_says = 0o0111100
grace_says = 0o0001101
leo_and_grace(leo_says, grace_says)
leo_says = 60
grace_says = 13
leo_and_grace(leo_says.to_s(2), grace_says.to_s(2))
leo_and_grace((leo_says & grace_says), (leo_says | grace_says))
leo_and_grace((leo_says & grace_says).to_s(2), (leo_says | grace_says).to_s(2))
leo_and_grace(leo_says ? 1 : 2, grace_says)
leo_and_grace(defined? leo_says, grace_says)
leo_and_grace(defined? $LAST_READ_LINE, grace_says)
leo_and_grace(defined? leo_and_grace, grace_says)
leo_says = 'Leo'
grace_says = 'Grace'
leo_and_grace(leo_says && grace_says, grace_says && leo_says)
leo_and_grace(leo_says || grace_says, grace_says || leo_says)
