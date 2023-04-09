import 'package:flutter/material.dart';
import 'package:imobis/views/shared/theme/config.dart';
import 'package:imobis/views/shared/theme/theme_mode.dart';

import '../../../core/helpers/validators/resources.dart';
import '../../../core/mocks/houses_mock.dart';

class ItemCard extends StatefulWidget {
  ItemCard(this.item, this.onTap, {Key? key}) : super(key: key);

  Item item;

  Function()? onTap;

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      margin: const EdgeInsets.only(
        top: 0.0,
        // bottom: 18.0,
        right: 10,
        left: 10,
      ),
      decoration: BoxDecoration(
        color: Mytheme.isDark ? R.colors.darkWhite : R.colors.lightGrey,
        // color: R.colors.customLightGrey,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: R.colors.customGrey,
        ),
      ),
      child: InkWell(
        onTap: widget.onTap,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: R.colors.customGrey,
                  image: DecorationImage(
                    image: NetworkImage(widget.item.thumbUrl!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                widget.item.category!,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 3.0,
              ),
              Text(
                widget.item.title!,
                style: Theme.of(context).textTheme.bodyMedium!,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: R.colors.customDarkGrey,
                    size: 20.0,
                  ),
                  Text(
                    widget.item.location!,
                    style: Theme.of(context).textTheme.bodyMedium!,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "R\$${widget.item.price} / Mês",
                    style: Theme.of(context).textTheme.bodyMedium!,
                    overflow: TextOverflow.ellipsis,
                  ),
                  IconButton(
                    onPressed: () {},
                    highlightColor: R.colors.customContrastColor.withAlpha(50),
                    splashColor: R.colors.customContrastColor.withAlpha(50),
                    icon: Icon(
                      Icons.favorite_outline,
                      color: R.colors.customContrastColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
