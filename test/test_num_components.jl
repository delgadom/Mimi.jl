
 using Base.Test
 using Mimi
 
 @defcomp ArgTester begin
   varA = Variable(index=[time])
   parA = Parameter()
 end
 
 m = Model()
 
 #############################################
 #  Tests for connecting scalar parameters   #
 #############################################
 +
 function run_timestep(s::ArgTester, t::Int)
     v = s.Variables
     p = s.Parameters
 
     v.varA[t] = p.parA
 end
 
 #trying to run model with no components
 @test_throws ErrorException run(m)