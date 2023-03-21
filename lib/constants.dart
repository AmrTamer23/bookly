import 'package:bookly/features/search/data/repos/search_repo_impl.dart';
import 'package:flutter/material.dart';

import 'core/utils/service_locater.dart';
import 'features/home/data/repos/home_repo_impl.dart';

const kPrimaryColor = Color(0xff100B20);
const kTransitionDuration = Duration(milliseconds: 250);
HomeRepoImpl homeRepoLocli = getIt.get<HomeRepoImpl>();
SearchRepoImpl searchRepoImpl = getIt.get<SearchRepoImpl>();
