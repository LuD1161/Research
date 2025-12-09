.class public LN2/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN2/E$d;


# instance fields
.field public final a:LY2/b;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public final d:LN2/E$b;


# direct methods
.method public constructor <init>(LY2/b;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LN2/D;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LN2/D;->c:Ljava/util/HashMap;

    new-instance v0, LN2/E$b;

    invoke-direct {v0}, LN2/E$b;-><init>()V

    iput-object v0, p0, LN2/D;->d:LN2/E$b;

    iput-object p1, p0, LN2/D;->a:LY2/b;

    invoke-static {}, LN2/F;->a()[LN2/F$e;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, LN2/D;->c:Ljava/util/HashMap;

    iget-wide v4, v2, LN2/F$e;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic b(LN2/D;LN2/F$c;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LN2/D;->m(LN2/F$c;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic c(LN2/D;LN2/F$c;JLandroid/view/KeyEvent;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, LN2/D;->l(LN2/F$c;JLandroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic d(LN2/E$d$a;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-static {p0, p1}, LN2/D;->k(LN2/E$d$a;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static e(Landroid/view/KeyEvent;)LN2/z$b;
    .locals 2

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-eqz p0, :cond_2

    if-ne p0, v1, :cond_1

    sget-object p0, LN2/z$b;->g:LN2/z$b;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Unexpected event type"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    if-eqz v0, :cond_3

    sget-object p0, LN2/z$b;->h:LN2/z$b;

    goto :goto_1

    :cond_3
    sget-object p0, LN2/z$b;->f:LN2/z$b;

    :goto_1
    return-object p0
.end method

.method public static j(JJ)J
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public static synthetic k(LN2/E$d$a;Ljava/nio/ByteBuffer;)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string p1, "KeyEmbedderResponder"

    const-string v1, "A null reply was received when sending a key event to the framework."

    invoke-static {p1, v1}, LM2/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, LN2/E$d$a;->a(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/KeyEvent;LN2/E$d$a;)V
    .locals 8

    invoke-virtual {p0, p1, p2}, LN2/D;->i(Landroid/view/KeyEvent;LN2/E$d$a;)Z

    move-result p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, LN2/D;->q(ZLjava/lang/Long;Ljava/lang/Long;J)V

    const/4 p1, 0x1

    invoke-interface {p2, p1}, LN2/E$d$a;->a(Z)V

    :cond_0
    return-void
.end method

.method public final f(Landroid/view/KeyEvent;)Ljava/lang/Long;
    .locals 4

    sget-object v0, LN2/F;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    int-to-long v0, p1

    const-wide v2, 0x1100000000L

    invoke-static {v0, v1, v2, v3}, LN2/D;->j(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final g(Landroid/view/KeyEvent;)Ljava/lang/Long;
    .locals 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide v3, 0x1100000000L

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1, v3, v4}, LN2/D;->j(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v2, LN2/F;->a:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1, v3, v4}, LN2/D;->j(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public h()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, LN2/D;->b:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final i(Landroid/view/KeyEvent;LN2/E$d$a;)Z
    .locals 17

    move-object/from16 v9, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-nez v0, :cond_0

    return v10

    :cond_0
    invoke-virtual/range {p0 .. p1}, LN2/D;->g(Landroid/view/KeyEvent;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual/range {p0 .. p1}, LN2/D;->f(Landroid/view/KeyEvent;)Ljava/lang/Long;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    sget-object v14, LN2/F;->c:[LN2/F$d;

    array-length v15, v14

    move v8, v10

    :goto_0
    const/4 v6, 0x1

    if-ge v8, v15, :cond_2

    aget-object v1, v14, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    iget v2, v1, LN2/F$d;->a:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    move v2, v6

    goto :goto_1

    :cond_1
    move v2, v10

    :goto_1
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v16, v8

    move-object v8, v13

    invoke-virtual/range {v0 .. v8}, LN2/D;->o(LN2/F$d;ZJJLandroid/view/KeyEvent;Ljava/util/ArrayList;)V

    add-int/lit8 v8, v16, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v9, LN2/D;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LN2/F$e;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    iget v2, v1, LN2/F$e;->a:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    move v2, v6

    goto :goto_3

    :cond_3
    move v2, v10

    :goto_3
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, LN2/D;->p(LN2/F$e;ZJLandroid/view/KeyEvent;)V

    goto :goto_2

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v6, :cond_5

    return v10

    :cond_5
    move v7, v10

    goto :goto_4

    :cond_6
    move v7, v6

    :goto_4
    iget-object v0, v9, LN2/D;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Long;

    const/4 v8, 0x0

    if-eqz v7, :cond_9

    if-nez v2, :cond_7

    sget-object v0, LN2/z$b;->f:LN2/z$b;

    goto :goto_5

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_8

    sget-object v0, LN2/z$b;->h:LN2/z$b;

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object v3, v11

    invoke-virtual/range {v0 .. v5}, LN2/D;->q(ZLjava/lang/Long;Ljava/lang/Long;J)V

    sget-object v0, LN2/z$b;->f:LN2/z$b;

    :goto_5
    iget-object v1, v9, LN2/D;->d:LN2/E$b;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    invoke-virtual {v1, v2}, LN2/E$b;->a(I)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    if-eqz v1, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_9
    if-nez v2, :cond_a

    return v10

    :cond_a
    sget-object v0, LN2/z$b;->g:LN2/z$b;

    :cond_b
    move-object v1, v8

    :goto_6
    sget-object v2, LN2/z$b;->h:LN2/z$b;

    if-eq v0, v2, :cond_d

    if-eqz v7, :cond_c

    move-object v8, v12

    :cond_c
    invoke-virtual {v9, v11, v8}, LN2/D;->r(Ljava/lang/Long;Ljava/lang/Long;)V

    :cond_d
    sget-object v2, LN2/z$b;->f:LN2/z$b;

    if-ne v0, v2, :cond_e

    iget-object v2, v9, LN2/D;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN2/F$e;

    if-eqz v2, :cond_e

    iget-boolean v3, v2, LN2/F$e;->d:Z

    xor-int/2addr v3, v6

    iput-boolean v3, v2, LN2/F$e;->d:Z

    :cond_e
    new-instance v2, LN2/z;

    invoke-direct {v2}, LN2/z;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v3

    const/16 v4, 0x201

    if-eq v3, v4, :cond_12

    const/16 v4, 0x401

    if-eq v3, v4, :cond_11

    const v4, 0x1000010

    if-eq v3, v4, :cond_10

    const v4, 0x2000001

    if-eq v3, v4, :cond_f

    sget-object v3, LN2/z$a;->f:LN2/z$a;

    iput-object v3, v2, LN2/z;->f:LN2/z$a;

    goto :goto_7

    :cond_f
    sget-object v3, LN2/z$a;->j:LN2/z$a;

    iput-object v3, v2, LN2/z;->f:LN2/z$a;

    goto :goto_7

    :cond_10
    sget-object v3, LN2/z$a;->i:LN2/z$a;

    iput-object v3, v2, LN2/z;->f:LN2/z$a;

    goto :goto_7

    :cond_11
    sget-object v3, LN2/z$a;->h:LN2/z$a;

    iput-object v3, v2, LN2/z;->f:LN2/z$a;

    goto :goto_7

    :cond_12
    sget-object v3, LN2/z$a;->g:LN2/z$a;

    iput-object v3, v2, LN2/z;->f:LN2/z$a;

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, v2, LN2/z;->a:J

    iput-object v0, v2, LN2/z;->b:LN2/z$b;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v2, LN2/z;->d:J

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v2, LN2/z;->c:J

    iput-object v1, v2, LN2/z;->g:Ljava/lang/String;

    iput-boolean v10, v2, LN2/z;->e:Z

    move-object/from16 v0, p2

    invoke-virtual {v9, v2, v0}, LN2/D;->n(LN2/z;LN2/E$d$a;)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_8

    :cond_13
    return v6
.end method

.method public final synthetic l(LN2/F$c;JLandroid/view/KeyEvent;)V
    .locals 8

    iget-wide v0, p1, LN2/F$c;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    const/4 v3, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, LN2/D;->q(ZLjava/lang/Long;Ljava/lang/Long;J)V

    return-void
.end method

.method public final synthetic m(LN2/F$c;Landroid/view/KeyEvent;)V
    .locals 8

    iget-wide v0, p1, LN2/F$c;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v0, p1, LN2/F$c;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    const/4 v3, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, LN2/D;->q(ZLjava/lang/Long;Ljava/lang/Long;J)V

    return-void
.end method

.method public final n(LN2/z;LN2/E$d$a;)V
    .locals 2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, LN2/A;

    invoke-direct {v0, p2}, LN2/A;-><init>(LN2/E$d$a;)V

    move-object p2, v0

    :goto_0
    iget-object v0, p0, LN2/D;->a:LY2/b;

    const-string v1, "flutter/keydata"

    invoke-virtual {p1}, LN2/z;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, v1, p1, p2}, LY2/b;->c(Ljava/lang/String;Ljava/nio/ByteBuffer;LY2/b$b;)V

    return-void
.end method

.method public o(LN2/F$d;ZJJLandroid/view/KeyEvent;Ljava/util/ArrayList;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p8

    iget-object v0, v7, LN2/F$d;->b:[LN2/F$c;

    array-length v1, v0

    new-array v9, v1, [Z

    array-length v0, v0

    new-array v10, v0, [Ljava/lang/Boolean;

    const/4 v11, 0x0

    move v0, v11

    move v12, v0

    :goto_0
    iget-object v1, v7, LN2/F$d;->b:[LN2/F$c;

    array-length v2, v1

    const/4 v13, 0x1

    if-ge v12, v2, :cond_7

    aget-object v2, v1, v12

    iget-object v1, v6, LN2/D;->b:Ljava/util/HashMap;

    iget-wide v3, v2, LN2/F$c;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    aput-boolean v1, v9, v12

    iget-wide v3, v2, LN2/F$c;->b:J

    cmp-long v3, v3, p3

    if-nez v3, :cond_4

    sget-object v1, LN2/D$a;->a:[I

    invoke-static/range {p7 .. p7}, LN2/D;->e(Landroid/view/KeyEvent;)LN2/z$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v13, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    move-object/from16 v14, p7

    goto :goto_3

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, LN2/C;

    move-object/from16 v14, p7

    invoke-direct {v0, v6, v2, v14}, LN2/C;-><init>(LN2/D;LN2/F$c;Landroid/view/KeyEvent;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object/from16 v14, p7

    :goto_1
    aget-boolean v0, v9, v12

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v10, v12

    goto :goto_2

    :cond_2
    move-object/from16 v14, p7

    aget-boolean v1, v9, v12

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v10, v12

    goto :goto_3

    :cond_3
    move-object/from16 v14, p7

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v0, v10, v12

    if-nez p2, :cond_6

    new-instance v15, LN2/B;

    move-object v0, v15

    move-object/from16 v1, p0

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, LN2/B;-><init>(LN2/D;LN2/F$c;JLandroid/view/KeyEvent;)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object/from16 v14, p7

    if-nez v0, :cond_6

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v13, v11

    :cond_6
    :goto_2
    move v0, v13

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_7
    move-object/from16 v14, p7

    if-eqz p2, :cond_b

    move v1, v11

    :goto_4
    iget-object v2, v7, LN2/F$d;->b:[LN2/F$c;

    array-length v2, v2

    if-ge v1, v2, :cond_a

    aget-object v2, v10, v1

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    if-eqz v0, :cond_9

    aget-boolean v2, v9, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v10, v1

    goto :goto_5

    :cond_9
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v0, v10, v1

    move v0, v13

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    if-nez v0, :cond_d

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v0, v10, v11

    goto :goto_8

    :cond_b
    move v0, v11

    :goto_6
    iget-object v1, v7, LN2/F$d;->b:[LN2/F$c;

    array-length v1, v1

    if-ge v0, v1, :cond_d

    aget-object v1, v10, v0

    if-eqz v1, :cond_c

    goto :goto_7

    :cond_c
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v10, v0

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    :goto_8
    iget-object v0, v7, LN2/F$d;->b:[LN2/F$c;

    array-length v0, v0

    if-ge v11, v0, :cond_f

    aget-boolean v0, v9, v11

    aget-object v1, v10, v11

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_e

    iget-object v0, v7, LN2/F$d;->b:[LN2/F$c;

    aget-object v0, v0, v11

    aget-object v1, v10, v11

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-wide v2, v0, LN2/F$c;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, v0, LN2/F$c;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual/range {p7 .. p7}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, LN2/D;->q(ZLjava/lang/Long;Ljava/lang/Long;J)V

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_f
    return-void
.end method

.method public p(LN2/F$e;ZJLandroid/view/KeyEvent;)V
    .locals 8

    iget-wide v0, p1, LN2/F$e;->c:J

    cmp-long p3, v0, p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-boolean p3, p1, LN2/F$e;->d:Z

    if-eq p3, p2, :cond_3

    iget-object p2, p0, LN2/D;->b:Ljava/util/HashMap;

    iget-wide p3, p1, LN2/F$e;->b:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    if-nez v1, :cond_1

    iget-boolean p2, p1, LN2/F$e;->d:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p1, LN2/F$e;->d:Z

    :cond_1
    iget-wide p2, p1, LN2/F$e;->c:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide p2, p1, LN2/F$e;->b:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p5}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, LN2/D;->q(ZLjava/lang/Long;Ljava/lang/Long;J)V

    if-eqz v1, :cond_2

    iget-boolean p2, p1, LN2/F$e;->d:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p1, LN2/F$e;->d:Z

    :cond_2
    iget-wide p2, p1, LN2/F$e;->c:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide p1, p1, LN2/F$e;->b:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p5}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, LN2/D;->q(ZLjava/lang/Long;Ljava/lang/Long;J)V

    :cond_3
    return-void
.end method

.method public final q(ZLjava/lang/Long;Ljava/lang/Long;J)V
    .locals 5

    new-instance v0, LN2/z;

    invoke-direct {v0}, LN2/z;-><init>()V

    iput-wide p4, v0, LN2/z;->a:J

    if-eqz p1, :cond_0

    sget-object p4, LN2/z$b;->f:LN2/z$b;

    goto :goto_0

    :cond_0
    sget-object p4, LN2/z$b;->g:LN2/z$b;

    :goto_0
    iput-object p4, v0, LN2/z;->b:LN2/z$b;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    iput-wide p4, v0, LN2/z;->d:J

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    iput-wide p4, v0, LN2/z;->c:J

    const/4 p4, 0x0

    iput-object p4, v0, LN2/z;->g:Ljava/lang/String;

    const/4 p5, 0x1

    iput-boolean p5, v0, LN2/z;->e:Z

    sget-object p5, LN2/z$a;->f:LN2/z$a;

    iput-object p5, v0, LN2/z;->f:LN2/z$a;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p5, v1, v3

    if-eqz p5, :cond_2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long p5, v1, v3

    if-eqz p5, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, p4

    :goto_1
    invoke-virtual {p0, p3, p2}, LN2/D;->r(Ljava/lang/Long;Ljava/lang/Long;)V

    :cond_2
    invoke-virtual {p0, v0, p4}, LN2/D;->n(LN2/z;LN2/E$d$a;)V

    return-void
.end method

.method public r(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, LN2/D;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "The key was not empty"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    iget-object p2, p0, LN2/D;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "The key was empty"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
