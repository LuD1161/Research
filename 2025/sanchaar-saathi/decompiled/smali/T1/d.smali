.class public final LT1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, LA1/b;->u(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v8, v5

    move/from16 v20, v8

    move-object v6, v3

    move-object v7, v6

    move-object v9, v7

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_0

    invoke-static/range {p1 .. p1}, LA1/b;->o(Landroid/os/Parcel;)I

    move-result v2

    invoke-static {v2}, LA1/b;->l(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-static {v0, v2}, LA1/b;->t(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {v0, v2}, LA1/b;->m(Landroid/os/Parcel;I)Z

    move-result v20

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v2}, LA1/b;->b(Landroid/os/Parcel;I)[B

    move-result-object v19

    goto :goto_0

    :pswitch_2
    sget-object v3, LT1/a$e;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, LA1/b;->e(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, LT1/a$e;

    goto :goto_0

    :pswitch_3
    sget-object v3, LT1/a$d;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, LA1/b;->e(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, LT1/a$d;

    goto :goto_0

    :pswitch_4
    sget-object v3, LT1/a$c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, LA1/b;->e(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, LT1/a$c;

    goto :goto_0

    :pswitch_5
    sget-object v3, LT1/a$g;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, LA1/b;->e(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v15, v2

    check-cast v15, LT1/a$g;

    goto :goto_0

    :pswitch_6
    sget-object v3, LT1/a$k;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, LA1/b;->e(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v14, v2

    check-cast v14, LT1/a$k;

    goto :goto_0

    :pswitch_7
    sget-object v3, LT1/a$l;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, LA1/b;->e(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v13, v2

    check-cast v13, LT1/a$l;

    goto :goto_0

    :pswitch_8
    sget-object v3, LT1/a$j;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, LA1/b;->e(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v12, v2

    check-cast v12, LT1/a$j;

    goto :goto_0

    :pswitch_9
    sget-object v3, LT1/a$i;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, LA1/b;->e(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v11, v2

    check-cast v11, LT1/a$i;

    goto :goto_0

    :pswitch_a
    sget-object v3, LT1/a$f;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, LA1/b;->e(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v10, v2

    check-cast v10, LT1/a$f;

    goto :goto_0

    :pswitch_b
    sget-object v3, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, LA1/b;->i(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, [Landroid/graphics/Point;

    goto/16 :goto_0

    :pswitch_c
    invoke-static {v0, v2}, LA1/b;->q(Landroid/os/Parcel;I)I

    move-result v8

    goto/16 :goto_0

    :pswitch_d
    invoke-static {v0, v2}, LA1/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :pswitch_e
    invoke-static {v0, v2}, LA1/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :pswitch_f
    invoke-static {v0, v2}, LA1/b;->q(Landroid/os/Parcel;I)I

    move-result v5

    goto/16 :goto_0

    :cond_0
    invoke-static {v0, v1}, LA1/b;->k(Landroid/os/Parcel;I)V

    new-instance v0, LT1/a;

    move-object v4, v0

    invoke-direct/range {v4 .. v20}, LT1/a;-><init>(ILjava/lang/String;Ljava/lang/String;I[Landroid/graphics/Point;LT1/a$f;LT1/a$i;LT1/a$j;LT1/a$l;LT1/a$k;LT1/a$g;LT1/a$c;LT1/a$d;LT1/a$e;[BZ)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [LT1/a;

    return-object p1
.end method
