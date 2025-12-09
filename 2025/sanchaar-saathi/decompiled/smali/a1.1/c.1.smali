.class public La1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final g:Ljava/lang/String;


# instance fields
.field public final e:LR0/x;

.field public final f:LR0/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EnqueueRunnable"

    invoke-static {v0}, LQ0/i;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La1/c;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LR0/x;)V
    .locals 1

    .line 1
    new-instance v0, LR0/o;

    invoke-direct {v0}, LR0/o;-><init>()V

    invoke-direct {p0, p1, v0}, La1/c;-><init>(LR0/x;LR0/o;)V

    return-void
.end method

.method public constructor <init>(LR0/x;LR0/o;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, La1/c;->e:LR0/x;

    .line 4
    iput-object p2, p0, La1/c;->f:LR0/o;

    return-void
.end method

.method public static b(LR0/x;)Z
    .locals 5

    invoke-static {p0}, LR0/x;->l(LR0/x;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, LR0/x;->g()LR0/E;

    move-result-object v1

    invoke-virtual {p0}, LR0/x;->f()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0}, LR0/x;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, LR0/x;->b()LQ0/d;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, La1/c;->c(LR0/E;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;LQ0/d;)Z

    move-result v0

    invoke-virtual {p0}, LR0/x;->k()V

    return v0
.end method

.method public static c(LR0/E;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;LQ0/d;)Z
    .locals 18

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, LR0/E;->q()Landroidx/work/impl/WorkDatabase;

    move-result-object v5

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    array-length v8, v0

    if-lez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    if-eqz v8, :cond_5

    array-length v9, v0

    move v10, v7

    move v12, v10

    move v13, v12

    const/4 v11, 0x1

    :goto_1
    if-ge v10, v9, :cond_6

    aget-object v14, v0, v10

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->J()LZ0/v;

    move-result-object v15

    invoke-interface {v15, v14}, LZ0/v;->m(Ljava/lang/String;)LZ0/u;

    move-result-object v15

    if-nez v15, :cond_1

    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object v0

    sget-object v1, La1/c;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prerequisite "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t exist; not enqueuing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LQ0/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_1
    iget-object v14, v15, LZ0/u;->b:LQ0/s;

    sget-object v15, LQ0/s;->g:LQ0/s;

    if-ne v14, v15, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    move v15, v7

    :goto_2
    and-int/2addr v11, v15

    sget-object v15, LQ0/s;->h:LQ0/s;

    if-ne v14, v15, :cond_3

    const/4 v13, 0x1

    goto :goto_3

    :cond_3
    sget-object v15, LQ0/s;->j:LQ0/s;

    if-ne v14, v15, :cond_4

    const/4 v12, 0x1

    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    move v12, v7

    move v13, v12

    const/4 v11, 0x1

    :cond_6
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_16

    if-nez v8, :cond_16

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->J()LZ0/v;

    move-result-object v10

    invoke-interface {v10, v1}, LZ0/v;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_16

    sget-object v14, LQ0/d;->g:LQ0/d;

    if-eq v2, v14, :cond_7

    sget-object v14, LQ0/d;->h:LQ0/d;

    if-ne v2, v14, :cond_8

    :cond_7
    move-object/from16 v14, p0

    goto :goto_5

    :cond_8
    sget-object v14, LQ0/d;->f:LQ0/d;

    if-ne v2, v14, :cond_b

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LZ0/u$b;

    iget-object v14, v14, LZ0/u$b;->b:LQ0/s;

    sget-object v15, LQ0/s;->e:LQ0/s;

    if-eq v14, v15, :cond_a

    sget-object v15, LQ0/s;->f:LQ0/s;

    if-ne v14, v15, :cond_9

    :cond_a
    return v7

    :cond_b
    move-object/from16 v14, p0

    invoke-static {v1, v14, v7}, La1/b;->c(Ljava/lang/String;LR0/E;Z)La1/b;

    move-result-object v2

    invoke-virtual {v2}, La1/b;->run()V

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->J()LZ0/v;

    move-result-object v2

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LZ0/u$b;

    iget-object v15, v15, LZ0/u$b;->a:Ljava/lang/String;

    invoke-interface {v2, v15}, LZ0/v;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    const/4 v6, 0x1

    goto/16 :goto_c

    :goto_5
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->E()LZ0/b;

    move-result-object v8

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, LZ0/u$b;

    iget-object v7, v6, LZ0/u$b;->a:Ljava/lang/String;

    invoke-interface {v8, v7}, LZ0/b;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, v6, LZ0/u$b;->b:LQ0/s;

    move-object/from16 v17, v8

    sget-object v8, LQ0/s;->g:LQ0/s;

    if-ne v7, v8, :cond_d

    const/4 v8, 0x1

    goto :goto_7

    :cond_d
    const/4 v8, 0x0

    :goto_7
    and-int/2addr v8, v11

    sget-object v11, LQ0/s;->h:LQ0/s;

    if-ne v7, v11, :cond_e

    const/4 v13, 0x1

    goto :goto_8

    :cond_e
    sget-object v11, LQ0/s;->j:LQ0/s;

    if-ne v7, v11, :cond_f

    const/4 v12, 0x1

    :cond_f
    :goto_8
    iget-object v6, v6, LZ0/u$b;->a:Ljava/lang/String;

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v11, v8

    goto :goto_9

    :cond_10
    move-object/from16 v17, v8

    :goto_9
    move-object/from16 v8, v17

    const/4 v7, 0x0

    goto :goto_6

    :cond_11
    sget-object v6, LQ0/d;->h:LQ0/d;

    if-ne v2, v6, :cond_14

    if-nez v12, :cond_12

    if-eqz v13, :cond_14

    :cond_12
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->J()LZ0/v;

    move-result-object v2

    invoke-interface {v2, v1}, LZ0/v;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LZ0/u$b;

    iget-object v7, v7, LZ0/u$b;->a:Ljava/lang/String;

    invoke-interface {v2, v7}, LZ0/v;->a(Ljava/lang/String;)V

    goto :goto_a

    :cond_13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    const/4 v12, 0x0

    const/4 v13, 0x0

    :cond_14
    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v2, v0

    if-lez v2, :cond_15

    const/4 v8, 0x1

    goto :goto_b

    :cond_15
    const/4 v8, 0x0

    :goto_b
    const/4 v6, 0x0

    goto :goto_c

    :cond_16
    move-object/from16 v14, p0

    goto :goto_b

    :goto_c
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LQ0/u;

    invoke-virtual {v7}, LQ0/u;->d()LZ0/u;

    move-result-object v10

    if-eqz v8, :cond_19

    if-nez v11, :cond_19

    if-eqz v13, :cond_17

    sget-object v15, LQ0/s;->h:LQ0/s;

    iput-object v15, v10, LZ0/u;->b:LQ0/s;

    goto :goto_e

    :cond_17
    if-eqz v12, :cond_18

    sget-object v15, LQ0/s;->j:LQ0/s;

    iput-object v15, v10, LZ0/u;->b:LQ0/s;

    goto :goto_e

    :cond_18
    sget-object v15, LQ0/s;->i:LQ0/s;

    iput-object v15, v10, LZ0/u;->b:LQ0/s;

    goto :goto_e

    :cond_19
    iput-wide v3, v10, LZ0/u;->n:J

    :goto_e
    iget-object v15, v10, LZ0/u;->b:LQ0/s;

    move-object/from16 p1, v2

    sget-object v2, LQ0/s;->e:LQ0/s;

    if-ne v15, v2, :cond_1a

    const/4 v6, 0x1

    :cond_1a
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->J()LZ0/v;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, LR0/E;->o()Ljava/util/List;

    move-result-object v15

    invoke-static {v15, v10}, La1/d;->a(Ljava/util/List;LZ0/u;)LZ0/u;

    move-result-object v10

    invoke-interface {v2, v10}, LZ0/v;->j(LZ0/u;)V

    if-eqz v8, :cond_1b

    array-length v2, v0

    const/4 v10, 0x0

    :goto_f
    if-ge v10, v2, :cond_1b

    aget-object v15, v0, v10

    move-object/from16 v17, v0

    new-instance v0, LZ0/a;

    move/from16 p2, v2

    invoke-virtual {v7}, LQ0/u;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v15}, LZ0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->E()LZ0/b;

    move-result-object v2

    invoke-interface {v2, v0}, LZ0/b;->d(LZ0/a;)V

    add-int/lit8 v10, v10, 0x1

    move/from16 v2, p2

    move-object/from16 v0, v17

    goto :goto_f

    :cond_1b
    move-object/from16 v17, v0

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->K()LZ0/z;

    move-result-object v0

    invoke-virtual {v7}, LQ0/u;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, LQ0/u;->c()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v0, v2, v10}, LZ0/z;->b(Ljava/lang/String;Ljava/util/Set;)V

    if-nez v9, :cond_1c

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->H()LZ0/o;

    move-result-object v0

    new-instance v2, LZ0/n;

    invoke-virtual {v7}, LQ0/u;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v1, v7}, LZ0/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, LZ0/o;->a(LZ0/n;)V

    :cond_1c
    move-object/from16 v2, p1

    move-object/from16 v0, v17

    goto/16 :goto_d

    :cond_1d
    return v6
.end method

.method public static e(LR0/x;)Z
    .locals 7

    invoke-virtual {p0}, LR0/x;->e()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LR0/x;

    invoke-virtual {v2}, LR0/x;->j()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, La1/c;->e(LR0/x;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object v3

    sget-object v4, La1/c;->g:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Already enqueued work ids ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v2}, LR0/x;->c()Ljava/util/List;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, LQ0/i;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, La1/c;->b(LR0/x;)Z

    move-result p0

    or-int/2addr p0, v1

    return p0
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, La1/c;->e:LR0/x;

    invoke-virtual {v0}, LR0/x;->g()LR0/E;

    move-result-object v0

    invoke-virtual {v0}, LR0/E;->q()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lu0/u;->e()V

    :try_start_0
    iget-object v1, p0, La1/c;->e:LR0/x;

    invoke-static {v1}, La1/c;->e(LR0/x;)Z

    move-result v1

    invoke-virtual {v0}, Lu0/u;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lu0/u;->i()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lu0/u;->i()V

    throw v1
.end method

.method public d()LQ0/l;
    .locals 1

    iget-object v0, p0, La1/c;->f:LR0/o;

    return-object v0
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, La1/c;->e:LR0/x;

    invoke-virtual {v0}, LR0/x;->g()LR0/E;

    move-result-object v0

    invoke-virtual {v0}, LR0/E;->j()Landroidx/work/a;

    move-result-object v1

    invoke-virtual {v0}, LR0/E;->q()Landroidx/work/impl/WorkDatabase;

    move-result-object v2

    invoke-virtual {v0}, LR0/E;->o()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v2, v0}, LR0/u;->b(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method

.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, La1/c;->e:LR0/x;

    invoke-virtual {v0}, LR0/x;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, La1/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La1/c;->e:LR0/x;

    invoke-virtual {v0}, LR0/x;->g()LR0/E;

    move-result-object v0

    invoke-virtual {v0}, LR0/E;->i()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, La1/p;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    invoke-virtual {p0}, La1/c;->f()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, La1/c;->f:LR0/o;

    sget-object v1, LQ0/l;->a:LQ0/l$b$c;

    invoke-virtual {v0, v1}, LR0/o;->a(LQ0/l$b;)V

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WorkContinuation has cycles ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, La1/c;->e:LR0/x;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v1, p0, La1/c;->f:LR0/o;

    new-instance v2, LQ0/l$b$a;

    invoke-direct {v2, v0}, LQ0/l$b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, LR0/o;->a(LQ0/l$b;)V

    :goto_2
    return-void
.end method
