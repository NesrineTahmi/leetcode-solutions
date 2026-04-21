class Solution:
    def matchPlayersAndTrainers(self, players: List[int], trainers: List[int]) -> int:
        players.sort()
        trainers.sort()
        players_ptr : int = 0
        trainers_ptr : int = 0
        while trainers_ptr < len(trainers) and players_ptr < len(players):
            if trainers[trainers_ptr] >= players[players_ptr]:
                players_ptr += 1
            trainers_ptr += 1 
        return players_ptr
