.class public LX2/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LX2/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:LX2/x;


# direct methods
.method public constructor <init>(LX2/x;)V
    .locals 0

    iput-object p1, p0, LX2/x$a;->c:LX2/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMethodCall(LY2/i;LY2/j$d;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "data"

    iget-object v6, v1, LX2/x$a;->c:LX2/x;

    invoke-static {v6}, LX2/x;->a(LX2/x;)LX2/x$f;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    iget-object v6, v0, LY2/i;->a:Ljava/lang/String;

    iget-object v0, v0, LY2/i;->b:Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' message."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TextInputChannel"

    invoke-static {v8, v7}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const-string v7, "error"

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v10, "TextInput.requestAutofill"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v9, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v10, "TextInput.clearClient"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v9, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v10, "TextInput.finishAutofillContext"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    const/4 v9, 0x7

    goto :goto_0

    :sswitch_3
    const-string v10, "TextInput.setEditableSizeAndTransform"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    const/4 v9, 0x6

    goto :goto_0

    :sswitch_4
    const-string v10, "TextInput.sendAppPrivateCommand"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    :cond_5
    const/4 v9, 0x5

    goto :goto_0

    :sswitch_5
    const-string v10, "TextInput.show"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_0

    :cond_6
    const/4 v9, 0x4

    goto :goto_0

    :sswitch_6
    const-string v10, "TextInput.hide"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_0

    :cond_7
    const/4 v9, 0x3

    goto :goto_0

    :sswitch_7
    const-string v10, "TextInput.setClient"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_0

    :cond_8
    const/4 v9, 0x2

    goto :goto_0

    :sswitch_8
    const-string v10, "TextInput.setEditingState"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_0

    :cond_9
    move v9, v4

    goto :goto_0

    :sswitch_9
    const-string v10, "TextInput.setPlatformViewClient"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_0

    :cond_a
    move v9, v3

    :goto_0
    packed-switch v9, :pswitch_data_0

    invoke-interface/range {p2 .. p2}, LY2/j$d;->c()V

    goto/16 :goto_6

    :pswitch_0
    iget-object v0, v1, LX2/x$a;->c:LX2/x;

    invoke-static {v0}, LX2/x;->a(LX2/x;)LX2/x$f;

    move-result-object v0

    invoke-interface {v0}, LX2/x$f;->f()V

    invoke-interface {v2, v8}, LY2/j$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_1
    iget-object v0, v1, LX2/x$a;->c:LX2/x;

    invoke-static {v0}, LX2/x;->a(LX2/x;)LX2/x$f;

    move-result-object v0

    invoke-interface {v0}, LX2/x$f;->b()V

    invoke-interface {v2, v8}, LY2/j$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_2
    iget-object v3, v1, LX2/x$a;->c:LX2/x;

    invoke-static {v3}, LX2/x;->a(LX2/x;)LX2/x$f;

    move-result-object v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v3, v0}, LX2/x$f;->i(Z)V

    invoke-interface {v2, v8}, LY2/j$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_3
    :try_start_0
    check-cast v0, Lorg/json/JSONObject;

    const-string v5, "width"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-string v5, "height"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    const-string v5, "transform"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/16 v5, 0x10

    new-array v14, v5, [D

    :goto_1
    if-ge v3, v5, :cond_b

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v15

    aput-wide v15, v14, v3

    add-int/2addr v3, v4

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_b
    iget-object v0, v1, LX2/x$a;->c:LX2/x;

    invoke-static {v0}, LX2/x;->a(LX2/x;)LX2/x$f;

    move-result-object v9

    invoke-interface/range {v9 .. v14}, LX2/x$f;->e(DD[D)V

    invoke-interface {v2, v8}, LY2/j$d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v7, v0, v8}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_4
    :try_start_1
    check-cast v0, Lorg/json/JSONObject;

    const-string v3, "action"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_c
    move-object v4, v8

    :goto_3
    iget-object v0, v1, LX2/x$a;->c:LX2/x;

    invoke-static {v0}, LX2/x;->a(LX2/x;)LX2/x$f;

    move-result-object v0

    invoke-interface {v0, v3, v4}, LX2/x$f;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v2, v8}, LY2/j$d;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_6

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v7, v0, v8}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_5
    iget-object v0, v1, LX2/x$a;->c:LX2/x;

    invoke-static {v0}, LX2/x;->a(LX2/x;)LX2/x$f;

    move-result-object v0

    invoke-interface {v0}, LX2/x$f;->a()V

    invoke-interface {v2, v8}, LY2/j$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_6
    iget-object v0, v1, LX2/x$a;->c:LX2/x;

    invoke-static {v0}, LX2/x;->a(LX2/x;)LX2/x$f;

    move-result-object v0

    invoke-interface {v0}, LX2/x$f;->j()V

    invoke-interface {v2, v8}, LY2/j$d;->a(Ljava/lang/Object;)V

    goto :goto_6

    :pswitch_7
    :try_start_2
    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v4, v1, LX2/x$a;->c:LX2/x;

    invoke-static {v4}, LX2/x;->a(LX2/x;)LX2/x$f;

    move-result-object v4

    invoke-static {v0}, LX2/x$b;->a(Lorg/json/JSONObject;)LX2/x$b;

    move-result-object v0

    invoke-interface {v4, v3, v0}, LX2/x$f;->h(ILX2/x$b;)V

    invoke-interface {v2, v8}, LY2/j$d;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v7, v0, v8}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :pswitch_8
    :try_start_3
    check-cast v0, Lorg/json/JSONObject;

    iget-object v3, v1, LX2/x$a;->c:LX2/x;

    invoke-static {v3}, LX2/x;->a(LX2/x;)LX2/x$f;

    move-result-object v3

    invoke-static {v0}, LX2/x$e;->a(Lorg/json/JSONObject;)LX2/x$e;

    move-result-object v0

    invoke-interface {v3, v0}, LX2/x$f;->g(LX2/x$e;)V

    invoke-interface {v2, v8}, LY2/j$d;->a(Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v7, v0, v8}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :pswitch_9
    :try_start_4
    check-cast v0, Lorg/json/JSONObject;

    const-string v4, "platformViewId"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "usesVirtualDisplay"

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, v1, LX2/x$a;->c:LX2/x;

    invoke-static {v3}, LX2/x;->a(LX2/x;)LX2/x$f;

    move-result-object v3

    invoke-interface {v3, v4, v0}, LX2/x$f;->d(IZ)V

    invoke-interface {v2, v8}, LY2/j$d;->a(Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v7, v0, v8}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6a0a6d0c -> :sswitch_9
        -0x3c861a16 -> :sswitch_8
        -0x23d2364 -> :sswitch_7
        0x101f2613 -> :sswitch_6
        0x102423ce -> :sswitch_5
        0x26b1e570 -> :sswitch_4
        0x47cf0f0b -> :sswitch_3
        0x66f8a3d9 -> :sswitch_2
        0x71834287 -> :sswitch_1
        0x7df775f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
