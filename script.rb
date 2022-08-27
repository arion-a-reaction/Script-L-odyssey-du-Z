def pbCreerDresseurVariable(shadow=false)
  trainer=PokeBattle_Trainer.new("Daniel", 30)
  trainer.setForeignID($Trainer)
  bag = PokemonBag.new
  trainer.metaID = $PokemonGlobal.playerID
  #début des ajouts de pokémons
  pkmn = PokeBattle_Pokemon.new(:FLOATZEL, 30, $trainer)
  pkmn.setItem(:LEFTOVERS)
  pkmn.pbLearnMove(:RAINDANCE)
  pkmn.pbLearnMove(:AQUATAIL)
  pkmn.pbLearnMove(:SLASH)
  pkmn.pbLearnMove(:CRUNCH)
  pkmn.setNature(:ADAMANT) # besoin de tester différemment
  pkmn.ev = [0,252,8,252,0,0] # 255 # fonctionne
  pkmn.iv = [0,0,0,0,0,0] # 31 # fonctionne
  pkmn.setAbility(0) #a priori correct
  pkmn.setGender(0) #correct
  pkmn.calcStats # Nécessité de recalc stats après ev changer
  trainer.party.push (pkmn)
  if pbGet(112)>=70
    pkmn = PokeBattle_Pokemon.new(:DUSCLOPS, 30, $trainer)
    pkmn.setItem(:EVIOLITE)
    pkmn.pbLearnMove(:MEMENTO)
    pkmn.pbLearnMove(:SHADOWBALL)
    pkmn.pbLearnMove(:TOXIC)
    pkmn.pbLearnMove(:DISABLE)
    pkmn.setNature(:LAX) # besoin de tester différemment
    pkmn.ev = [252,0,252,0,0,8] # 255 # fonctionne
    pkmn.iv = [0,0,0,0,0,0] # 31 # fonctionne
    pkmn.setAbility(0) #a priori correct
    pkmn.setGender(0) #correct
  elsif pbGet(112)>=60
    pkmn = PokeBattle_Pokemon.new(:PRIMEAPE, 30, $trainer)
    pkmn.setItem(:CHOICEBAND)
    pkmn.pbLearnMove(:KARATECHOP)
    pkmn.pbLearnMove(:FOCUSENERGY)
    pkmn.pbLearnMove(:ODORSLEUTH)
    pkmn.pbLearnMove(:FURYSWIPES)
    pkmn.setNature(:JOLLY) # besoin de tester différemment
    pkmn.ev = [0,252,8,252,0,0] # 255 # fonctionne
    pkmn.iv = [0,0,0,0,0,0] # 31 # fonctionne
    pkmn.setAbility(0) #a priori correct
    pkmn.setGender(0) #correct
  elsif pbGet(112)>=50
    pkmn = PokeBattle_Pokemon.new(:CHANSEY, 30, $trainer)
    pkmn.setItem(:LEFTOVERS)
    pkmn.pbLearnMove(:TOXIC)
    pkmn.pbLearnMove(:STEALTHROCK)
    pkmn.pbLearnMove(:SOFTBOILED)
    pkmn.pbLearnMove(:SEISMICTOSS)
    pkmn.setNature(:CALM) # besoin de tester différemment
    pkmn.ev = [252,0,8,0,0,252] # 255 # fonctionne
    pkmn.iv = [0,0,0,0,0,0] # 31 # fonctionne
    pkmn.setAbility(0) #a priori correct
    pkmn.setGender(0) #correct
  elsif pbGet(112)>=40
    pkmn = PokeBattle_Pokemon.new(:POLIWRATH, 30, $trainer)
    pkmn.setItem(:LEFTOVERS)
    pkmn.pbLearnMove(:ICEPUNCH)
    pkmn.pbLearnMove(:MINDREADER)
    pkmn.pbLearnMove(:SURF)
    pkmn.pbLearnMove(:DYNAMICPUNCH)
    pkmn.setNature(:BRAVE) # besoin de tester différemment
    pkmn.ev = [0,252,132,0,0,128] # 255 # fonctionne
    pkmn.iv = [0,0,0,0,0,0] # 31 # fonctionne
    pkmn.setAbility(0) #a priori correct
    pkmn.setGender(0) #correct
  elsif pbGet(112)>=30
    pkmn = PokeBattle_Pokemon.new(:SUNFLORA, 30, $trainer)
    pkmn.setItem(:HEATROCK)
    pkmn.pbLearnMove(:SOLARBEAM)
    pkmn.pbLearnMove(:SUNNYDAY)
    pkmn.pbLearnMove(:WEATHERBALL)
    pkmn.pbLearnMove(:SYNTHESIS)
    pkmn.setNature(:MODEST) # besoin de tester différemment
    pkmn.ev = [0,0,8,252,252,0] # 255 # fonctionne
    pkmn.iv = [0,0,0,0,0,0] # 31 # fonctionne
    pkmn.setAbility(0) #a priori correct
    pkmn.setGender(0) #correct
  elsif pbGet(112)>=20
    pkmn = PokeBattle_Pokemon.new(:CAMERUPT, 30, $trainer)
    pkmn.setItem(:FOCUSSASH)
    pkmn.pbLearnMove(:FLAMETHROWER)
    pkmn.pbLearnMove(:EARTHPOWER)
    pkmn.pbLearnMove(:OVERHEAT)
    pkmn.pbLearnMove(:ANCIENTPOWER)
    pkmn.setNature(:MODEST) # besoin de tester différemment
    pkmn.ev = [0,0,252,0,252,8] # 255 # fonctionne
    pkmn.iv = [0,0,0,0,0,0] # 31 # fonctionne
    pkmn.setAbility(1) #a priori correct
    pkmn.setGender(0) #correct
  else
    pkmn = PokeBattle_Pokemon.new(:FURRET, 30, $trainer)
    pkmn.setItem(:CHOICESCARF)
    pkmn.pbLearnMove(:DOUBLEEDGE)
    pkmn.pbLearnMove(:TRICK)
    pkmn.pbLearnMove(:KNOCKOFF)
    pkmn.pbLearnMove(:UTURN)
    pkmn.setNature(:ADAMANT) # besoin de tester différemment
    pkmn.ev = [0,252,8,252,0,0] # 255 # fonctionne
    pkmn.iv = [0,0,0,0,0,0] # 31 # fonctionne
    pkmn.setAbility(2) #a priori correct
    pkmn.setGender(0) #correct
  end
  pkmn.calcStats # Nécessité de recalc stats après ev changer
  trainer.party.push (pkmn)
  #fin de l'ajout du second
  #début de l'ajout du troisième
    if pbGet(112)%10==7
    pkmn = PokeBattle_Pokemon.new(:DUSCLOPS, 30, $trainer)
    pkmn.setItem(:EVIOLITE)
    pkmn.pbLearnMove(:MEMENTO)
    pkmn.pbLearnMove(:SHADOWBALL)
    pkmn.pbLearnMove(:TOXIC)
    pkmn.pbLearnMove(:DISABLE)
    pkmn.setNature(:LAX) # besoin de tester différemment
    pkmn.ev = [252,0,252,0,0,8] # 255 # fonctionne
    pkmn.iv = [0,0,0,0,0,0] # 31 # fonctionne
    pkmn.setAbility(0) #a priori correct
    pkmn.setGender(0) #correct
  elsif pbGet(112)%10==6
    pkmn = PokeBattle_Pokemon.new(:PRIMEAPE, 30, $trainer)
    pkmn.setItem(:CHOICEBAND)
    pkmn.pbLearnMove(:KARATECHOP)
    pkmn.pbLearnMove(:FOCUSENERGY)
    pkmn.pbLearnMove(:ODORSLEUTH)
    pkmn.pbLearnMove(:FURYSWIPES)
    pkmn.setNature(:JOLLY) # besoin de tester différemment
    pkmn.ev = [0,252,8,252,0,0] # 255 # fonctionne
    pkmn.iv = [0,0,0,0,0,0] # 31 # fonctionne
    pkmn.setAbility(0) #a priori correct
    pkmn.setGender(0) #correct
  elsif pbGet(112)%10==5
    pkmn = PokeBattle_Pokemon.new(:CHANSEY, 30, $trainer)
    pkmn.setItem(:LEFTOVERS)
    pkmn.pbLearnMove(:TOXIC)
    pkmn.pbLearnMove(:STEALTHROCK)
    pkmn.pbLearnMove(:SOFTBOILED)
    pkmn.pbLearnMove(:SEISMICTOSS)
    pkmn.setNature(:CALM) # besoin de tester différemment
    pkmn.ev = [252,0,8,0,0,252] # 255 # fonctionne
    pkmn.iv = [0,0,0,0,0,0] # 31 # fonctionne
    pkmn.setAbility(0) #a priori correct
    pkmn.setGender(0) #correct
  elsif pbGet(112)%10==4
    pkmn = PokeBattle_Pokemon.new(:POLIWRATH, 30, $trainer)
    pkmn.setItem(:LEFTOVERS)
    pkmn.pbLearnMove(:ICEPUNCH)
    pkmn.pbLearnMove(:MINDREADER)
    pkmn.pbLearnMove(:SURF)
    pkmn.pbLearnMove(:DYNAMICPUNCH)
    pkmn.setNature(:BRAVE) # besoin de tester différemment
    pkmn.ev = [0,252,132,0,0,128] # 255 # fonctionne
    pkmn.iv = [0,0,0,0,0,0] # 31 # fonctionne
    pkmn.setAbility(0) #a priori correct
    pkmn.setGender(0) #correct
  elsif pbGet(112)%10==3
    pkmn = PokeBattle_Pokemon.new(:SUNFLORA, 30, $trainer)
    pkmn.setItem(:HEATROCK)
    pkmn.pbLearnMove(:SOLARBEAM)
    pkmn.pbLearnMove(:SUNNYDAY)
    pkmn.pbLearnMove(:WEATHERBALL)
    pkmn.pbLearnMove(:SYNTHESIS)
    pkmn.setNature(:MODEST) # besoin de tester différemment
    pkmn.ev = [0,0,8,252,252,0] # 255 # fonctionne
    pkmn.iv = [0,0,0,0,0,0] # 31 # fonctionne
    pkmn.setAbility(0) #a priori correct
    pkmn.setGender(0) #correct
  elsif pbGet(112)%10==2
    pkmn = PokeBattle_Pokemon.new(:CAMERUPT, 30, $trainer)
    pkmn.setItem(:FOCUSSASH)
    pkmn.pbLearnMove(:FLAMETHROWER)
    pkmn.pbLearnMove(:EARTHPOWER)
    pkmn.pbLearnMove(:OVERHEAT)
    pkmn.pbLearnMove(:ANCIENTPOWER)
    pkmn.setNature(:MODEST) # besoin de tester différemment
    pkmn.ev = [0,0,252,0,252,8] # 255 # fonctionne
    pkmn.iv = [0,0,0,0,0,0] # 31 # fonctionne
    pkmn.setAbility(1) #a priori correct
    pkmn.setGender(0) #correct
  else
    pkmn = PokeBattle_Pokemon.new(:FURRET, 30, $trainer)
    pkmn.setItem(:CHOICESCARF)
    pkmn.pbLearnMove(:DOUBLEEDGE)
    pkmn.pbLearnMove(:TRICK)
    pkmn.pbLearnMove(:KNOCKOFF)
    pkmn.pbLearnMove(:UTURN)
    pkmn.setNature(:ADAMANT) # besoin de tester différemment
    pkmn.ev = [0,252,8,252,0,0] # 255 # fonctionne
    pkmn.iv = [0,0,0,0,0,0] # 31 # fonctionne
    pkmn.setAbility(2) #a priori correct
    pkmn.setGender(0) #correct
  end
  pkmn.calcStats # Nécessité de recalc stats après ev changer
  trainer.party.push (pkmn)
  #fin de l'ajout du troisième
  return [trainer,bag]
end

def CreerTrainer(shadow=false)
  items=[]
  party=[]
  opponent=nil
  trainer=pbCreerDresseurVariable(shadow)[0]
  opponent=trainer
  party=trainer.party
  return [opponent,items,party]
end

def LancerCombatCustom(shadow=false,endspeech="...",canlose=false)
  trainerid=1
  trainername="t"
  doublebattle=false
  trainerparty=0
  variable=nil
  if !$PokemonTemp.waitingTrainer && $Trainer.ablePokemonCount>1 &&
    pbMapInterpreterRunning?
    thisEvent=pbMapInterpreter.get_character(0)
    triggeredEvents=$game_player.pbTriggeredTrainerEvents([2],false)
    otherEvent=[]
    for i in triggeredEvents
      if i.id!=thisEvent.id && !$game_self_switches[[$game_map.map_id,i.id,"A"]]
        otherEvent.push(i)
      end
    end
    #charger rival
    if otherEvent.length==1
      trainer=CreerTrainer(shadow)
      Events.onTrainerPartyLoad.trigger(nil,trainer)
      if !trainer
        pbMissingTrainer(trainerid,trainername,trainerparty)
        return false
      end
      if trainer[2].length<=6 # 3
        $PokemonTemp.waitingTrainer=[trainer,thisEvent.id,endspeech]
        return false
      end
    end
  end
  trainer=CreerTrainer(shadow)
  #pour changer l'intro
  #trainer.metaID=5
  Events.onTrainerPartyLoad.trigger(nil,trainer)
  if !trainer
    pbMissingTrainer(trainerid,trainername,trainerparty)
    return false
  end
  #partenaire
  if $PokemonGlobal.partner && ($PokemonTemp.waitingTrainer || doublebattle)
    othertrainer=PokeBattle_Trainer.new(
       $PokemonGlobal.partner[1],$PokemonGlobal.partner[0])
    othertrainer.id=$PokemonGlobal.partner[2]
    othertrainer.party=$PokemonGlobal.partner[3]
    playerparty=[]
    for i in 0...$Trainer.party.length
      playerparty[i]=$Trainer.party[i]
    end
    for i in 0...othertrainer.party.length
      playerparty[6+i]=othertrainer.party[i]
    end
    fullparty1=true
    playertrainer=[$Trainer,othertrainer]
    doublebattle=true
  else
    playerparty=$Trainer.party
    playertrainer=$Trainer
    fullparty1=false
  end
  if $PokemonTemp.waitingTrainer
    combinedParty=[]
    fullparty2=false
    if false
      if $PokemonTemp.waitingTrainer[0][2].length>3
        raise _INTL("Opponent 1's party has more than three Pokémon, which is not allowed")
      end
      if trainer[2].length>3
        raise _INTL("Opponent 2's party has more than three Pokémon, which is not allowed")
      end
    elsif $PokemonTemp.waitingTrainer[0][2].length>3 || trainer[2].length>3
      for i in 0...$PokemonTemp.waitingTrainer[0][2].length
        combinedParty[i]=$PokemonTemp.waitingTrainer[0][2][i]
      end
      for i in 0...trainer[2].length
        combinedParty[6+i]=trainer[2][i]
      end
      fullparty2=true
    else
      for i in 0...$PokemonTemp.waitingTrainer[0][2].length
        combinedParty[i]=$PokemonTemp.waitingTrainer[0][2][i]
      end
      for i in 0...trainer[2].length
        combinedParty[3+i]=trainer[2][i]
      end
      fullparty2=false
    end
    scene=pbNewBattleScene
    battle=PokeBattle_Battle.new(scene,playerparty,combinedParty,playertrainer,
       [$PokemonTemp.waitingTrainer[0][0],trainer[0]])
    trainerbgm=pbGetTrainerBattleBGM(
       [$PokemonTemp.waitingTrainer[0][0],trainer[0]])
    battle.fullparty1=fullparty1
    battle.fullparty2=fullparty2
    battle.doublebattle=battle.pbDoubleBattleAllowed?()
    battle.endspeech=$PokemonTemp.waitingTrainer[2]
    battle.endspeech2=endspeech
    battle.items=[$PokemonTemp.waitingTrainer[0][1],trainer[1]]
  else
    scene=pbNewBattleScene
    battle=PokeBattle_Battle.new(scene,playerparty,trainer[2],playertrainer,trainer[0])
    battle.fullparty1=fullparty1
    battle.doublebattle=doublebattle ? battle.pbDoubleBattleAllowed?() : false
    battle.endspeech=endspeech
    battle.items=trainer[1]
    trainerbgm=pbGetTrainerBattleBGM(trainer[0])
  end
  if Input.press?(Input::CTRL) && $DEBUG
    Kernel.pbMessage(_INTL("SKIPPING BATTLE..."))
    Kernel.pbMessage(_INTL("AFTER LOSING..."))
    Kernel.pbMessage(battle.endspeech)
    Kernel.pbMessage(battle.endspeech2) if battle.endspeech2
    if $PokemonTemp.waitingTrainer
      pbMapInterpreter.pbSetSelfSwitch($PokemonTemp.waitingTrainer[1],"A",true)
      $PokemonTemp.waitingTrainer=nil
    end
    return true
  end
  Events.onStartBattle.trigger(nil,nil)
  battle.internalbattle=true
  pbPrepareBattle(battle)
  restorebgm=true
  decision=0
  Audio.me_stop
  pbBattleSpecialAnimation(trainerbgm,trainer[0].trainertype,trainer[0].name) { 
     pbSceneStandby {
        decision=battle.pbStartBattle(canlose)
     }
     for i in $Trainer.party; (i.makeUnmega rescue nil); (i.makeUnprimal rescue nil); (i.makeUndefmode rescue nil); end
     if $PokemonGlobal.partner
       pbHealAll
       for i in $PokemonGlobal.partner[3]
         i.heal
         i.makeUnmega rescue nil
         i.makeUnprimal rescue nil
         i.makeUndefmode rescue nil
       end
     end
     if decision==2 || decision==5
       if canlose
         for i in $Trainer.party; i.heal; end
         for i in 0...10
           Graphics.update
         end
#       else
#         $game_system.bgm_unpause
#         $game_system.bgs_unpause
#         Kernel.pbStartOver
       end
     end
     Events.onEndBattle.trigger(nil,decision,canlose)
     if decision==1
       if $PokemonTemp.waitingTrainer
         pbMapInterpreter.pbSetSelfSwitch($PokemonTemp.waitingTrainer[1],"A",true)
       end
     end
  }
  Input.update
  pbSet(variable,decision)
  $PokemonTemp.waitingTrainer=nil
  return (decision==1)
end

#ajout

#inter
def pbBattleSpecialAnimation(bgm=nil,trainerid=-1,trainername="")
  handled=false
  playingBGS=nil
  playingBGM=nil
  if $game_system && $game_system.is_a?(Game_System)
    playingBGS=$game_system.getPlayingBGS
    playingBGM=$game_system.getPlayingBGM
    $game_system.bgm_pause
    $game_system.bgs_pause
  end
  pbMEFade(0.25)
  pbWait(10)
  pbMEStop
  if bgm
    pbBGMPlay(bgm)
  else
    pbBGMPlay(pbGetWildBattleBGM(0))
  end
  viewport=Viewport.new(0,0,Graphics.width,Graphics.height)
  viewport.z=99999
# Fade to gray a few times.
  viewport.color=Color.new(17*8,17*8,17*8)
  3.times do
    viewport.color.alpha=0
    6.times do
      viewport.color.alpha+=30
      Graphics.update
      Input.update
      pbUpdateSceneMap
    end
    6.times do
      viewport.color.alpha-=30
      Graphics.update
      Input.update
      pbUpdateSceneMap
    end
  end
  if $game_temp.background_bitmap
    $game_temp.background_bitmap.dispose
  end
  $game_temp.background_bitmap=Graphics.snap_to_bitmap
  # Check for custom battle intro animations
  handled=pbSpecialBattleAnimationOverride(viewport,trainerid,trainername)
  # Default battle intro animation
  if !handled
    if Sprite.method_defined?(:wave_amp) && rand(15)==0
      viewport.color=Color.new(0,0,0,255)
      sprite = Sprite.new
      bitmap=Graphics.snap_to_bitmap
      bm=bitmap.clone
      sprite.z=99999
      sprite.bitmap = bm
      sprite.wave_speed=500
      for i in 0..25
        sprite.opacity-=10
        sprite.wave_amp+=60
        sprite.update
        sprite.wave_speed+=30
        2.times do
          Graphics.update
        end
      end
      bitmap.dispose
      bm.dispose
      sprite.dispose
    elsif Bitmap.method_defined?(:radial_blur) && rand(15)==0
      viewport.color=Color.new(0,0,0,255)
      sprite = Sprite.new
      bitmap=Graphics.snap_to_bitmap
      bm=bitmap.clone
      sprite.z=99999
      sprite.bitmap = bm
      for i in 0..15
        bm.radial_blur(i,2)
        sprite.opacity-=15
        2.times do
          Graphics.update
        end
      end
      bitmap.dispose
      bm.dispose
      sprite.dispose
    elsif rand(10)==0 # Custom transition method
      scroll=["ScrollDown","ScrollLeft","ScrollRight","ScrollUp",
              "ScrollDownRight","ScrollDownLeft","ScrollUpRight","ScrollUpLeft"]
      Graphics.freeze
      viewport.color=Color.new(0,0,0,255)
      Graphics.transition(50,sprintf("Graphics/Transitions/%s",scroll[rand(scroll.length)]))
    else
      transitions=[
         # Transitions with graphic files
         "021-Normal01","022-Normal02",
         "Battle","battle1","battle2","battle3","battle4",
         "computertr","computertrclose",
         "hexatr","hexatrc","hexatzr",
         "Image1","Image2","Image3","Image4",
         # Custom transition methods
         "Splash","Random_stripe_v","Random_stripe_h",
         "RotatingPieces","ShrinkingPieces",
         "BreakingGlass","Mosaic","zoomin"
      ]
      rnd=rand(transitions.length)
      Graphics.freeze
      viewport.color=Color.new(0,0,0,255)
      Graphics.transition(40,sprintf("Graphics/Transitions/%s",transitions[rnd]))
    end
    5.times do
      Graphics.update
      Input.update
      pbUpdateSceneMap
    end
  end
  pbPushFade
  yield if block_given?
  pbPopFade
  if $game_system && $game_system.is_a?(Game_System)
    $game_system.bgm_resume(playingBGM)
    $game_system.bgs_resume(playingBGS)
  end
  $PokemonGlobal.nextBattleBGM=nil
  $PokemonGlobal.nextBattleME=nil
  $PokemonGlobal.nextBattleBack=nil
  $PokemonEncounters.clearStepCount
  for j in 0..17
    viewport.color=Color.new(0,0,0,(17-j)*15)
    Graphics.update
    Input.update
    pbUpdateSceneMap
  end
  viewport.dispose
end
#inter
def pbSpecialBattleAnimationOverride(viewport,trainerid=-1,trainername="")
  # The following example runs a common event that ought to do a custom
  # animation if some condition is true:
  #
  # if $game_map && $game_map.map_id==20   # If on map 20
  #   pbCommonEvent(20)
  #   return true                          # Note that the battle animation is done
  # end
  #
  ##### VS. animation, by Luka S.J. #####
  ##### Tweaked by Maruno           #####
  if trainerid>=0
    #tbargraphic=sprintf("Graphics/Transitions/vsBar%s",getConstantName(PBTrainers,trainerid)) rescue nil
    # if !pbResolveBitmap(tbargraphic)
    tbargraphic=sprintf("Graphics/Transitions/vsBar%d",trainerid)
    #tgraphic=sprintf("Graphics/Transitions/vsTrainer%s",getConstantName(PBTrainers,trainerid)) rescue nil
    # if !pbResolveBitmap(tgraphic)
    tgraphic=sprintf("Graphics/Transitions/vsTrainer%d-1",trainerid)
    if pbResolveBitmap(tbargraphic) && pbResolveBitmap(tgraphic)
      outfit=$Trainer ? $Trainer.outfit : 0
      # Set up
      viewplayer=Viewport.new(0,Graphics.height/3,Graphics.width/2,128)
      viewplayer.z=viewport.z
      viewopp=Viewport.new(Graphics.width/2,Graphics.height/3,Graphics.width/2,128)
      viewopp.z=viewport.z
      viewvs=Viewport.new(0,0,Graphics.width,Graphics.height)
      viewvs.z=viewport.z
      xoffset=(Graphics.width/2)/10
      xoffset=xoffset.round
      xoffset=xoffset*10
      fade=Sprite.new(viewport)
      fade.bitmap=BitmapCache.load_bitmap("Graphics/Transitions/vsFlash")
      fade.tone=Tone.new(-255,-255,-255)
      fade.opacity=100
      overlay=Sprite.new(viewport)
      overlay.bitmap=Bitmap.new(Graphics.width,Graphics.height)
      pbSetSystemFont(overlay.bitmap)
      bar1=Sprite.new(viewplayer)
      pbargraphic=sprintf("Graphics/Transitions/vsBar%s_%d",getConstantName(PBTrainers,$Trainer.trainertype),outfit) rescue nil
      pbargraphic=sprintf("Graphics/Transitions/vsBar%d_%d",$Trainer.trainertype,outfit) if !pbResolveBitmap(pbargraphic)
      if !pbResolveBitmap(pbargraphic)
        pbargraphic=sprintf("Graphics/Transitions/vsBar%s",getConstantName(PBTrainers,$Trainer.trainertype)) rescue nil
      end
      pbargraphic=sprintf("Graphics/Transitions/vsBar%d",$Trainer.trainertype) if !pbResolveBitmap(pbargraphic)
      bar1.bitmap=BitmapCache.load_bitmap(pbargraphic)
      bar1.x=-xoffset
      bar2=Sprite.new(viewopp)
      bar2.bitmap=BitmapCache.load_bitmap(tbargraphic)
      bar2.x=xoffset
      vs=Sprite.new(viewvs)
      vs.bitmap=BitmapCache.load_bitmap("Graphics/Transitions/vs")
      vs.ox=vs.bitmap.width/2
      vs.oy=vs.bitmap.height/2
      vs.x=Graphics.width/2
      vs.y=Graphics.height/1.5
      vs.visible=false
      flash=Sprite.new(viewvs)
      flash.bitmap=BitmapCache.load_bitmap("Graphics/Transitions/vsFlash")
      flash.opacity=0
      # Animation
      10.times do
        bar1.x+=xoffset/10
        bar2.x-=xoffset/10
        pbWait(1)
      end
      pbSEPlay("Flash2")
      pbSEPlay("Sword2")
      flash.opacity=255
      bar1.dispose
      bar2.dispose
      bar1=AnimatedPlane.new(viewplayer)
      bar1.bitmap=BitmapCache.load_bitmap(pbargraphic)
      player=Sprite.new(viewplayer)
      pgraphic=sprintf("Graphics/Transitions/vsTrainer%s_%d",getConstantName(PBTrainers,$Trainer.trainertype),outfit) rescue nil
      pgraphic=sprintf("Graphics/Transitions/vsTrainer%d_%d",$Trainer.trainertype,outfit) if !pbResolveBitmap(pgraphic)
      if !pbResolveBitmap(pgraphic)
        pgraphic=sprintf("Graphics/Transitions/vsTrainer%s",getConstantName(PBTrainers,$Trainer.trainertype)) rescue nil
      end
      pgraphic=sprintf("Graphics/Transitions/vsTrainer%d",$Trainer.trainertype) if !pbResolveBitmap(pgraphic)
      player.bitmap=BitmapCache.load_bitmap(pgraphic)
      player.x=-xoffset
      bar2=AnimatedPlane.new(viewopp)
      bar2.bitmap=BitmapCache.load_bitmap(tbargraphic)
      trainer=Sprite.new(viewopp)
      trainer.bitmap=BitmapCache.load_bitmap(tgraphic)
      trainer.x=xoffset
      trainer.tone=Tone.new(-255,-255,-255)
      25.times do
        flash.opacity-=51 if flash.opacity>0
        bar1.ox-=16
        bar2.ox+=16
        pbWait(1)
      end
      11.times do
        bar1.ox-=16
        bar2.ox+=16
        player.x+=xoffset/10
        trainer.x-=xoffset/10
        pbWait(1)
      end
      2.times do
        bar1.ox-=16
        bar2.ox+=16
        player.x-=xoffset/20
        trainer.x+=xoffset/20
        pbWait(1)
      end
      10.times do
        bar1.ox-=16
        bar2.ox+=16
        pbWait(1)
      end
      val=2
      flash.opacity=255
      vs.visible=true
      trainer.tone=Tone.new(0,0,0)
      textpos=[
         [_INTL("{1}",$Trainer.name),Graphics.width/4,(Graphics.height/1.5)+10,2,
            Color.new(248,248,248),Color.new(12*6,12*6,12*6)],
         [_INTL("{1}",trainername),(Graphics.width/4)+(Graphics.width/2),(Graphics.height/1.5)+10,2,
            Color.new(248,248,248),Color.new(12*6,12*6,12*6)]
      ]
      pbDrawTextPositions(overlay.bitmap,textpos)
      pbSEPlay("Sword2")
      70.times do
        bar1.ox-=16
        bar2.ox+=16
        flash.opacity-=25.5 if flash.opacity>0
        vs.x+=val
        vs.y-=val
        val=2 if vs.x<=(Graphics.width/2)-2
        val=-2 if vs.x>=(Graphics.width/2)+2
        pbWait(1)
      end
      30.times do
        bar1.ox-=16
        bar2.ox+=16
        vs.zoom_x+=0.2
        vs.zoom_y+=0.2
        pbWait(1)
      end
      flash.tone=Tone.new(-255,-255,-255)
      10.times do
        bar1.ox-=16
        bar2.ox+=16
        flash.opacity+=25.5
        pbWait(1)
      end
      # End
      player.dispose
      trainer.dispose
      flash.dispose
      vs.dispose
      bar1.dispose
      bar2.dispose
      overlay.dispose
      fade.dispose
      viewvs.dispose
      viewopp.dispose
      viewplayer.dispose
      viewport.color=Color.new(0,0,0,255)
      return true
    end
  end
  return false
end
