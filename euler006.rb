tsotfohnn = (1..100).map{|n|n**2}.inject(:+)
tsots = (1..100).inject(:+)**2

p tsots - tsotfohnn
