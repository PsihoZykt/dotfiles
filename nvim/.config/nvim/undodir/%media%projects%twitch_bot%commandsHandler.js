Vim�UnDo� ����ycJڛ+&<��/����=y8bbF��1   �   7					return await getFollowAge(userstate).then(res => {   /                          a:�   
 _�                     2       ����                                                                                                                                                                                                                                                                                                                            .          1          V       a7     �   1   4   �                      }5��    1                   Q                    �    2                     R                    5�_�      	             -   !    ����                                                                                                                                                                                                                                                                                                                            .           1          V        a:[     �   -   3   �      														�   .   /   �    �   ,   /   �      !                    return "test"5��    ,   !              
   �                     �    -           
          �      
              �    -                     �              �       5�_�      
           	   2        ����                                                                                                                                                                                                                                                                                                                            3           6          V        a:\    �   	   �   �   �   6    async handleCommand(message, channel, userstate) {   1        commandsFileHandler.setFileName(channel);   7        const words = message.toLowerCase().split(' ');   .        var commandRe = /!([\wа-яА-Я]+)/g;   0        let regResult = commandRe.exec(message);           let type = ""   !        if (regResult !== null) {                type = regResult[0];   	        }           //Privelegues commands   [        if (userstate.mod || userstate.username === "psihoz_ykt" || userstate.subscriber) {               switch (type) {                   case("!add"):   =                    return this.addCommand(channel, message);                    case("!change"):   ?                    return this.changeCommand(channel, message)                    case("!delete"):   @                    return this.deleteCommand(channel, message);   "                case("!commands"):   8                    return this.getAllCommands(channel);                   case ("!banp"):   :                    return banp(message,channel,userstate)                    case("!rating"):   P                    return await h3lobby.getRating(channel, words).then(res => {   #                        return res;                       });                   case("!stats"):   O                    return await h3lobby.getStats(channel, words).then(res => {   #                        return res;                       });                   case("!last"):   N                    return await h3lobby.getLast(channel, words).then(res => {   #                        return res;                       });                   case("!test"):   !                    return "test"   4														                case ("!followage"): {   F                    return await getFollowAge(userstate).then(res => {   #                        return res;                       });       &                case ("!followage"): {   F                    return await getFollowAge(userstate).then(res => {   #                        return res;                       });                   									}                       default:   F                    if (commandsFileHandler.findCommandInFile(type)) {   9                        return this.findCommand(message);                       } else {   Q                       return getChannelPointsReward(channel, userstate, message)                       }               }   	        }   "        // Non-privelegue commands               switch(type) {                    case("!rating"):   P                    return await h3lobby.getRating(channel, words).then(res => {   #                        return res;                       });                   case("!stats"):   O                    return await h3lobby.getStats(channel, words).then(res => {   #                        return res;                       });                   case("!last"):   N                    return await h3lobby.getLast(channel, words).then(res => {   #                        return res;                       });   &                case ("!followage"): {   F                    return await getFollowAge(userstate).then(res => {   #                        return res;                       });                   }                   default:   F                    if (commandsFileHandler.findCommandInFile(type)) {   C                        console.log("Non privelegue, find command")   9                        return this.findCommand(message);                       } else {   R                        return getChannelPointsReward(channel, userstate, message)                       }               }           },   7    //Input: Users message like "!add 111 Hello world!"   "    addCommand(channel, message) {   -        const command = new Command(message);   %        if (!command.text) return "";   :        if (commandsFileHandler.addCommandToFile(command))               return;           else   ;            return command.getName() + " is already exists"           },       changeCommand           (channel, message) {   2        let messageCommand = new Command(message);   I        if (commandsFileHandler.isCommandAlreadyExists(messageCommand)) {   Y            let command = commandsFileHandler.getCommandByName(messageCommand.getName());   R            commandsFileHandler.rewriteCommand(command, messageCommand.getText());   -            commandsFileHandler.updateFile();           } else {   @            return messageCommand.getName() + " does not exists"   	        }       }       ,   %    deleteCommand(channel, message) {   -        const command = new Command(message);   B        if (commandsFileHandler.isCommandAlreadyExists(command)) {   >            commandsFileHandler.deleteCommandFromFile(command)   -            commandsFileHandler.updateFile();   5            return command.getName() + " was deleted"           } else {   (            console.log('doesnt exists')   8            return command.getName() + " doesn't exists"   	        }       }       ,       getAllCommands(channel) {   ?        return commandsFileHandler.getCommandsNames().join(" ")           },       findCommand(message) {   .        var commandRe = /!([\wа-яА-Я]+)/g;       5        let commandName = commandRe.exec(message)[0];           let username = "";           var re = /@(\w+)/g;   )        let regResult = re.exec(message);       !        if (regResult !== null) {   $            username = regResult[0];   	        }   I        let command = commandsFileHandler.findCommandInFile(commandName);   ,        return username + " " + command.text       },5��    	       �       �       �      Z            5�_�   	              
   3       ����                                                                                                                                                                                                                                                                                                                            
           
          V        a:c     �   2   4   �      &                case ("!followage"): {5��    2                     z                     5�_�   
                 .       ����                                                                                                                                                                                                                                                                                                                            
           
          V        a:j     �   -   /   �      				case ("!followage"): {5��    -                                          5�_�                    1       ����                                                                                                                                                                                                                                                                                                                            
           
          V        a:m     �   0   2   �      					});5��    0                    l                    5�_�                    1       ����                                                                                                                                                                                                                                                                                                                            
           
          V        a:p    �   -   /   �      				case ("!followage"): 5��    -                                         5�_�                   1       ����                                                                                                                                                                                                                                                                                                                            
           
          V        a:�     �   0   2   �      					}5��    0                     l                     5�_�                    1       ����                                                                                                                                                                                                                                                                                                                            
           
          V        a:�    �   2   4   �               case ("!followage"): {5��    2                     p                     5�_�                    2        ����                                                                                                                                                                                                                                                                                                                            
           
          V        a:�     �   1   2           5��    1                      o                     5�_�                    .       ����                                                                                                                                                                                                                                                                                                                            
           
          V        a:�   	 �   -   /   �      				case ("!followage"):5��    -                                          �    -                                        5�_�                     /       ����                                                                                                                                                                                                                                                                                                                            
           
          V        a:�   
 �   .   0   �      7					return await getFollowAge(userstate).then(res => {5��    .                     =                     �    .                    1                    5�_�                   7        ����                                                                                                                                                                                                                                                                                                                            
           
          V        a:w     �   6   8   �      				 }5��    6                      �                     �    6                     �                    5�_�                     7       ����                                                                                                                                                                                                                                                                                                                            
           
          V        a:y    �   6   �   �   \   				}   			}       				default:   6					if(commandsFileHandler.findCommandInFile(type)) {   #		return this.findCommand(message);   					} else {   ;	return getChannelPointsReward(channel, userstate, message)   }   			}   		}   // Non-privelegue commands   switch (type) {   	case ("!rating"):   >		return await h3lobby.getRating(channel, words).then(res => {   			return res;   		});   	case ("!stats"):   =		return await h3lobby.getStats(channel, words).then(res => {   			return res;   		});   	case ("!last"):   <		return await h3lobby.getLast(channel, words).then(res => {   			return res;   		});   	case ("!followage"): {   4		return await getFollowAge(userstate).then(res => {   			return res;   		});   	}   		default:   4		if (commandsFileHandler.findCommandInFile(type)) {   .			console.log("Non privelegue, find command")   $			return this.findCommand(message);   
		} else {   =			return getChannelPointsReward(channel, userstate, message)   		}   }       	},   3//Input: Users message like "!add 111 Hello world!"   addCommand(channel, message) {   &	const command = new Command(message);   	if (!command.text) return "";   3	if (commandsFileHandler.addCommandToFile(command))   			return;   	else   1		return command.getName() + " is already exists"       },   changeCommand   	(channel, message) {   +	let messageCommand = new Command(message);   B	if (commandsFileHandler.isCommandAlreadyExists(messageCommand)) {   O		let command = commandsFileHandler.getCommandByName(messageCommand.getName());   H		commandsFileHandler.rewriteCommand(command, messageCommand.getText());   #		commandsFileHandler.updateFile();   		} else {   6		return messageCommand.getName() + " does not exists"   	}   }   	,   !deleteCommand(channel, message) {   &	const command = new Command(message);   ;	if (commandsFileHandler.isCommandAlreadyExists(command)) {   4		commandsFileHandler.deleteCommandFromFile(command)   #		commandsFileHandler.updateFile();   +		return command.getName() + " was deleted"   		} else {   		console.log('doesnt exists')   .		return command.getName() + " doesn't exists"   	}   }   	,   getAllCommands(channel) {   8	return commandsFileHandler.getCommandsNames().join(" ")       },   findCommand(message) {   '	var commandRe = /!([\wа-яА-Я]+)/g;       .	let commandName = commandRe.exec(message)[0];   	let username = "";   	var re = /@(\w+)/g;   "	let regResult = re.exec(message);       	if (regResult !== null) {   		username = regResult[0];   	}   B	let command = commandsFileHandler.findCommandInFile(commandName);   %	return username + " " + command.text   },5��    6       \       \       �      �	      =	      5�_�                  -   !    ����                                                                                                                                                                                                                                                                                                                            3          6          V       a7:     �   ,   .   �      !                    return "test"   														�   .   /   �    �   -   /   �      4														                case ("!followage"): {   F                    return await getFollowAge(userstate).then(res => {   #                        return res;                       });    5��    ,   !              
   �                     �    -           
          �      
              �    -                     �              �       5�_�                     2        ����                                                                                                                                                                                                                                                                                                                                                             a7<    �   	   �   �   �   3	async handleCommand(message, channel, userstate) {   +		commandsFileHandler.setFileName(channel);   1		const words = message.toLowerCase().split(' ');   (		var commandRe = /!([\wа-яА-Я]+)/g;   *		let regResult = commandRe.exec(message);   		let type = ""   		if (regResult !== null) {   			type = regResult[0];   		}   		//Privelegues commands   U		if (userstate.mod || userstate.username === "psihoz_ykt" || userstate.subscriber) {   			switch (type) {   				case ("!add"):   .					return this.addCommand(channel, message);   				case ("!change"):   0					return this.changeCommand(channel, message)   				case ("!delete"):   1					return this.deleteCommand(channel, message);   				case ("!commands"):   )					return this.getAllCommands(channel);   				case ("!banp"):   -					return banp(message, channel, userstate)   				case ("!rating"):   A					return await h3lobby.getRating(channel, words).then(res => {   						return res;   					});   				case ("!stats"):   @					return await h3lobby.getStats(channel, words).then(res => {   						return res;   					});   				case ("!last"):   ?					return await h3lobby.getLast(channel, words).then(res => {   						return res;   					});   				case ("!test"):   					return "test"   				case ("!followage"): {   7					return await getFollowAge(userstate).then(res => {   						return res;   					});       &                case ("!followage"): {   7					return await getFollowAge(userstate).then(res => {   						return res;   					});       				}       				default:   7					if (commandsFileHandler.findCommandInFile(type)) {   '						return this.findCommand(message);   					} else {   @						return getChannelPointsReward(channel, userstate, message)   					}   			}   		}   		// Non-privelegue commands   		switch (type) {   			case ("!rating"):   @				return await h3lobby.getRating(channel, words).then(res => {   					return res;   				});   			case ("!stats"):   ?				return await h3lobby.getStats(channel, words).then(res => {   					return res;   				});   			case ("!last"):   >				return await h3lobby.getLast(channel, words).then(res => {   					return res;   				});   			case ("!followage"): {   6				return await getFollowAge(userstate).then(res => {   					return res;   				});   			}   			default:   6				if (commandsFileHandler.findCommandInFile(type)) {   0					console.log("Non privelegue, find command")   &					return this.findCommand(message);   				} else {   ?					return getChannelPointsReward(channel, userstate, message)   				}   		}       	},   4	//Input: Users message like "!add 111 Hello world!"   	addCommand(channel, message) {   '		const command = new Command(message);   		if (!command.text) return "";   4		if (commandsFileHandler.addCommandToFile(command))   
			return;   		else   2			return command.getName() + " is already exists"       	},   	changeCommand   		(channel, message) {   ,		let messageCommand = new Command(message);   C		if (commandsFileHandler.isCommandAlreadyExists(messageCommand)) {   P			let command = commandsFileHandler.getCommandByName(messageCommand.getName());   I			commandsFileHandler.rewriteCommand(command, messageCommand.getText());   $			commandsFileHandler.updateFile();   
		} else {   7			return messageCommand.getName() + " does not exists"   		}   	}   	,   "	deleteCommand(channel, message) {   '		const command = new Command(message);   <		if (commandsFileHandler.isCommandAlreadyExists(command)) {   5			commandsFileHandler.deleteCommandFromFile(command)   $			commandsFileHandler.updateFile();   ,			return command.getName() + " was deleted"   
		} else {   			console.log('doesnt exists')   /			return command.getName() + " doesn't exists"   		}   	}   	,   	getAllCommands(channel) {   9		return commandsFileHandler.getCommandsNames().join(" ")       	},   	findCommand(message) {   (		var commandRe = /!([\wа-яА-Я]+)/g;       /		let commandName = commandRe.exec(message)[0];   		let username = "";   		var re = /@(\w+)/g;   #		let regResult = re.exec(message);       		if (regResult !== null) {   			username = regResult[0];   		}   C		let command = commandsFileHandler.findCommandInFile(commandName);   &		return username + " " + command.text   	},5��    	       �       �       �      Z            5�_�                   2       ����                                                                                                                                                                                                                                                                                                                            .          1          V       a7!     �   2   3   �    �   2   3   �      &                case ("!followage"): {   F                    return await getFollowAge(userstate).then(res => {   #                        return res;                       });5��    2                      R              �       5�_�                    3   !    ����                                                                                                                                                                                                                                                                                                                            .          1          V       a7$     �   2   4   �      )                case ("!followagetop"): {5��    2   !                  s                     �    2   "                 t                    �    2                     g                     �    2                     f                     �    2                     e                     �    2                     d                     �    2                     c                     �    2                     b                     �    2                     a                     �    2                     `                     �    2                     _                     �    2                     ^                     �    2                     ]                     �    2   
                  \                     �    2   	                  [                     �    2                     Z                     �    2                     Y                     �    2                     X                     �    2                     W                     �    2                     V                     �    2                     U                     �    2                     T                     �    2                     S                     �    2                  $   R             $       �    2   #                  u                     �    2   "                 t                    5�_�                    3   #    ����                                                                                                                                                                                                                                                                                                                            
          
          V       a7(    �   	   �   �   �   3	async handleCommand(message, channel, userstate) {   +		commandsFileHandler.setFileName(channel);   1		const words = message.toLowerCase().split(' ');   (		var commandRe = /!([\wа-яА-Я]+)/g;   *		let regResult = commandRe.exec(message);   		let type = ""   		if (regResult !== null) {   			type = regResult[0];   		}   		//Privelegues commands   U		if (userstate.mod || userstate.username === "psihoz_ykt" || userstate.subscriber) {   			switch (type) {   				case ("!add"):   .					return this.addCommand(channel, message);   				case ("!change"):   0					return this.changeCommand(channel, message)   				case ("!delete"):   1					return this.deleteCommand(channel, message);   				case ("!commands"):   )					return this.getAllCommands(channel);   				case ("!banp"):   -					return banp(message, channel, userstate)   				case ("!rating"):   A					return await h3lobby.getRating(channel, words).then(res => {   						return res;   					});   				case ("!stats"):   @					return await h3lobby.getStats(channel, words).then(res => {   						return res;   					});   				case ("!last"):   ?					return await h3lobby.getLast(channel, words).then(res => {   						return res;   					});   				case ("!test"):   					return "test"   				case ("!followage"): {   7					return await getFollowAge(userstate).then(res => {   						return res;   					});                   )                case ("!followagetop"): {   7					return await getFollowAge(userstate).then(res => {   						return res;   					});   				}       				default:   7					if (commandsFileHandler.findCommandInFile(type)) {   '						return this.findCommand(message);   					} else {   @						return getChannelPointsReward(channel, userstate, message)   					}   			}   		}   		// Non-privelegue commands   		switch (type) {   			case ("!rating"):   @				return await h3lobby.getRating(channel, words).then(res => {   					return res;   				});   			case ("!stats"):   ?				return await h3lobby.getStats(channel, words).then(res => {   					return res;   				});   			case ("!last"):   >				return await h3lobby.getLast(channel, words).then(res => {   					return res;   				});   			case ("!followage"): {   6				return await getFollowAge(userstate).then(res => {   					return res;   				});   			}   			default:   6				if (commandsFileHandler.findCommandInFile(type)) {   0					console.log("Non privelegue, find command")   &					return this.findCommand(message);   				} else {   ?					return getChannelPointsReward(channel, userstate, message)   				}   		}       	},   4	//Input: Users message like "!add 111 Hello world!"   	addCommand(channel, message) {   '		const command = new Command(message);   		if (!command.text) return "";   4		if (commandsFileHandler.addCommandToFile(command))   
			return;   		else   2			return command.getName() + " is already exists"       	},   	changeCommand   		(channel, message) {   ,		let messageCommand = new Command(message);   C		if (commandsFileHandler.isCommandAlreadyExists(messageCommand)) {   P			let command = commandsFileHandler.getCommandByName(messageCommand.getName());   I			commandsFileHandler.rewriteCommand(command, messageCommand.getText());   $			commandsFileHandler.updateFile();   
		} else {   7			return messageCommand.getName() + " does not exists"   		}   	}   	,   "	deleteCommand(channel, message) {   '		const command = new Command(message);   <		if (commandsFileHandler.isCommandAlreadyExists(command)) {   5			commandsFileHandler.deleteCommandFromFile(command)   $			commandsFileHandler.updateFile();   ,			return command.getName() + " was deleted"   
		} else {   			console.log('doesnt exists')   /			return command.getName() + " doesn't exists"   		}   	}   	,   	getAllCommands(channel) {   9		return commandsFileHandler.getCommandsNames().join(" ")       	},   	findCommand(message) {   (		var commandRe = /!([\wа-яА-Я]+)/g;       /		let commandName = commandRe.exec(message)[0];   		let username = "";   		var re = /@(\w+)/g;   #		let regResult = re.exec(message);       		if (regResult !== null) {   			username = regResult[0];   		}   C		let command = commandsFileHandler.findCommandInFile(commandName);   &		return username + " " + command.text   	},5��    	       �       �       �      N      #      5�_�                     1       ����                                                                                                                                                                                                                                                                                                                            
          
          V       a7,    �   0   2   �      					}5��    0                     n                     5��