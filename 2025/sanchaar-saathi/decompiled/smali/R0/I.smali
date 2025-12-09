.class public abstract LR0/I;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(LR0/E;Ljava/lang/String;LR0/o;Lu3/a;LQ0/u;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, LR0/I;->d(LR0/E;Ljava/lang/String;LR0/o;Lu3/a;LQ0/u;)V

    return-void
.end method

.method public static synthetic b(Landroidx/work/impl/WorkDatabase;LZ0/u;LZ0/u;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 0

    invoke-static/range {p0 .. p6}, LR0/I;->g(Landroidx/work/impl/WorkDatabase;LZ0/u;LZ0/u;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V

    return-void
.end method

.method public static final c(LR0/E;Ljava/lang/String;LQ0/u;)LQ0/l;
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workRequest"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LR0/o;

    invoke-direct {v0}, LR0/o;-><init>()V

    new-instance v5, LR0/I$a;

    invoke-direct {v5, p2, p0, p1, v0}, LR0/I$a;-><init>(LQ0/u;LR0/E;Ljava/lang/String;LR0/o;)V

    invoke-virtual {p0}, LR0/E;->r()Lc1/b;

    move-result-object v1

    invoke-interface {v1}, Lc1/b;->b()Lc1/a;

    move-result-object v7

    new-instance v8, LR0/G;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, LR0/G;-><init>(LR0/E;Ljava/lang/String;LR0/o;Lu3/a;LQ0/u;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static final d(LR0/E;Ljava/lang/String;LR0/o;Lu3/a;LQ0/u;)V
    .locals 43

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "$this_enqueueUniquelyNamedPeriodic"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$name"

    invoke-static {v0, v2}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$operation"

    invoke-static {v1, v2}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$enqueueNew"

    move-object/from16 v4, p3

    invoke-static {v4, v2}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$workRequest"

    move-object/from16 v5, p4

    invoke-static {v5, v2}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, LR0/E;->q()Landroidx/work/impl/WorkDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->J()LZ0/v;

    move-result-object v2

    invoke-interface {v2, v0}, LZ0/v;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    const-string v0, "Can\'t apply UPDATE policy to the chains of work."

    invoke-static {v1, v0}, LR0/I;->e(LR0/o;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v6}, Li3/w;->v(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LZ0/u$b;

    if-nez v6, :cond_1

    invoke-interface/range {p3 .. p3}, Lu3/a;->c()Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v7, v6, LZ0/u$b;->a:Ljava/lang/String;

    invoke-interface {v2, v7}, LZ0/v;->m(Ljava/lang/String;)LZ0/u;

    move-result-object v7

    if-nez v7, :cond_2

    new-instance v2, LQ0/l$b$a;

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WorkSpec with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v6, LZ0/u$b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", that matches a name \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", wasn\'t found"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, LQ0/l$b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, LR0/o;->a(LQ0/l$b;)V

    return-void

    :cond_2
    invoke-virtual {v7}, LZ0/u;->h()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Can\'t update OneTimeWorker to Periodic Worker. Update operation must preserve worker\'s type."

    invoke-static {v1, v0}, LR0/I;->e(LR0/o;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, v6, LZ0/u$b;->b:LQ0/s;

    sget-object v7, LQ0/s;->j:LQ0/s;

    if-ne v0, v7, :cond_4

    iget-object v0, v6, LZ0/u$b;->a:Ljava/lang/String;

    invoke-interface {v2, v0}, LZ0/v;->a(Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Lu3/a;->c()Ljava/lang/Object;

    return-void

    :cond_4
    invoke-virtual/range {p4 .. p4}, LQ0/u;->d()LZ0/u;

    move-result-object v7

    iget-object v8, v6, LZ0/u$b;->a:Ljava/lang/String;

    const v35, 0xffffe

    const/16 v36, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-static/range {v7 .. v36}, LZ0/u;->c(LZ0/u;Ljava/lang/String;LQ0/s;Ljava/lang/String;Ljava/lang/String;Landroidx/work/b;Landroidx/work/b;JJJLQ0/b;ILQ0/a;JJJJZLQ0/m;IIILjava/lang/Object;)LZ0/u;

    move-result-object v41

    :try_start_0
    invoke-virtual/range {p0 .. p0}, LR0/E;->n()LR0/r;

    move-result-object v0

    const-string v2, "processor"

    invoke-static {v0, v2}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, LR0/E;->q()Landroidx/work/impl/WorkDatabase;

    move-result-object v2

    const-string v4, "workDatabase"

    invoke-static {v2, v4}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, LR0/E;->j()Landroidx/work/a;

    move-result-object v4

    const-string v6, "configuration"

    invoke-static {v4, v6}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, LR0/E;->o()Ljava/util/List;

    move-result-object v3

    const-string v6, "schedulers"

    invoke-static {v3, v6}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, LQ0/u;->c()Ljava/util/Set;

    move-result-object v42

    move-object/from16 v37, v0

    move-object/from16 v38, v2

    move-object/from16 v39, v4

    move-object/from16 v40, v3

    invoke-static/range {v37 .. v42}, LR0/I;->f(LR0/r;Landroidx/work/impl/WorkDatabase;Landroidx/work/a;Ljava/util/List;LZ0/u;Ljava/util/Set;)LQ0/t$a;

    sget-object v0, LQ0/l;->a:LQ0/l$b$c;

    invoke-virtual {v1, v0}, LR0/o;->a(LQ0/l$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v2, LQ0/l$b$a;

    invoke-direct {v2, v0}, LQ0/l$b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, LR0/o;->a(LQ0/l$b;)V

    :goto_0
    return-void
.end method

.method public static final e(LR0/o;Ljava/lang/String;)V
    .locals 2

    new-instance v0, LQ0/l$b$a;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, LQ0/l$b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, LR0/o;->a(LQ0/l$b;)V

    return-void
.end method

.method public static final f(LR0/r;Landroidx/work/impl/WorkDatabase;Landroidx/work/a;Ljava/util/List;LZ0/u;Ljava/util/Set;)LQ0/t$a;
    .locals 9

    iget-object v5, p4, LZ0/u;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->J()LZ0/v;

    move-result-object v0

    invoke-interface {v0, v5}, LZ0/v;->m(Ljava/lang/String;)LZ0/u;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v0, v3, LZ0/u;->b:LQ0/s;

    invoke-virtual {v0}, LQ0/s;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, LQ0/t$a;->e:LQ0/t$a;

    return-object p0

    :cond_0
    invoke-virtual {v3}, LZ0/u;->h()Z

    move-result v0

    invoke-virtual {p4}, LZ0/u;->h()Z

    move-result v1

    xor-int/2addr v0, v1

    if-nez v0, :cond_4

    invoke-virtual {p0, v5}, LR0/r;->k(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR0/t;

    invoke-interface {v1, v5}, LR0/t;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v8, LR0/H;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p4

    move-object v4, p3

    move-object v6, p5

    move v7, p0

    invoke-direct/range {v0 .. v7}, LR0/H;-><init>(Landroidx/work/impl/WorkDatabase;LZ0/u;LZ0/u;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V

    invoke-virtual {p1, v8}, Lu0/u;->A(Ljava/lang/Runnable;)V

    if-nez p0, :cond_2

    invoke-static {p2, p1, p3}, LR0/u;->b(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_2
    if-eqz p0, :cond_3

    sget-object p0, LQ0/t$a;->g:LQ0/t$a;

    goto :goto_1

    :cond_3
    sget-object p0, LQ0/t$a;->f:LQ0/t$a;

    :goto_1
    return-object p0

    :cond_4
    sget-object p0, LR0/I$b;->f:LR0/I$b;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can\'t update "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v3}, Lu3/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " Worker to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, p4}, Lu3/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Worker. Update operation must preserve worker\'s type."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Worker with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " doesn\'t exist"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final g(Landroidx/work/impl/WorkDatabase;LZ0/u;LZ0/u;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 35

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p1

    const-string v5, "$workDatabase"

    move-object/from16 v15, p0

    invoke-static {v15, v5}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$newWorkSpec"

    move-object/from16 v6, p1

    invoke-static {v6, v5}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$oldWorkSpec"

    invoke-static {v0, v5}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$schedulers"

    invoke-static {v1, v5}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$workSpecId"

    invoke-static {v2, v5}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$tags"

    invoke-static {v3, v5}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkDatabase;->J()LZ0/v;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkDatabase;->K()LZ0/z;

    move-result-object v14

    iget-object v6, v0, LZ0/u;->b:LQ0/s;

    iget v5, v0, LZ0/u;->k:I

    move/from16 v18, v5

    iget-wide v7, v0, LZ0/u;->n:J

    move-wide/from16 v22, v7

    invoke-virtual/range {p2 .. p2}, LZ0/u;->d()I

    move-result v0

    add-int/lit8 v31, v0, 0x1

    const v32, 0x7dbfd

    const/16 v33, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v16, 0x0

    move-object v0, v13

    move-object/from16 v34, v14

    move-wide/from16 v13, v16

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v4 .. v33}, LZ0/u;->c(LZ0/u;Ljava/lang/String;LQ0/s;Ljava/lang/String;Ljava/lang/String;Landroidx/work/b;Landroidx/work/b;JJJLQ0/b;ILQ0/a;JJJJZLQ0/m;IIILjava/lang/Object;)LZ0/u;

    move-result-object v4

    invoke-static {v1, v4}, La1/d;->a(Ljava/util/List;LZ0/u;)LZ0/u;

    move-result-object v1

    invoke-interface {v0, v1}, LZ0/v;->c(LZ0/u;)V

    move-object/from16 v1, v34

    invoke-interface {v1, v2}, LZ0/z;->c(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, LZ0/z;->b(Ljava/lang/String;Ljava/util/Set;)V

    if-nez p6, :cond_0

    const-wide/16 v3, -0x1

    invoke-interface {v0, v2, v3, v4}, LZ0/v;->f(Ljava/lang/String;J)I

    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkDatabase;->I()LZ0/r;

    move-result-object v0

    invoke-interface {v0, v2}, LZ0/r;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
