import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/character_cubit/cubit/character_cubit.dart';
import '../../data/model/character_model.dart';
import '../widgets/agents_list.dart';

class AgentsScreen extends StatefulWidget {
  const AgentsScreen({Key? key}) : super(key: key);

  @override
  State<AgentsScreen> createState() => _AgentsScreenState();
}

class _AgentsScreenState extends State<AgentsScreen> {
  List<CharacterModel> characters = [];

  @override
  Widget build(BuildContext context) {
    return AgentsList(data: characters, count: 2);
  }

  @override
  void initState() {
    // context.read<CharactersCubit>().getCharacters();
    final cubiData = context.read<CharacterCubit>();
    if (cubiData.state is CharacterLoadedState) {
      characters = (cubiData.state as CharacterLoadedState).characters;
      // print(characters);
    }
    super.initState();
  }
}
