.class public abstract LP3/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/util/List;)Ljava/util/Map;
    .locals 23

    sget-object v0, LO3/r;->f:LO3/r$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "/"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, LO3/r$a;->e(LO3/r$a;Ljava/lang/String;ZILjava/lang/Object;)LO3/r;

    move-result-object v0

    new-instance v1, LP3/h;

    const/16 v19, 0x1fc

    const/16 v20, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move-object v5, v1

    move-object v6, v0

    invoke-direct/range {v5 .. v20}, LP3/h;-><init>(LO3/r;ZLjava/lang/String;JJJILjava/lang/Long;JILv3/g;)V

    invoke-static {v0, v1}, Lh3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh3/g;

    move-result-object v0

    filled-new-array {v0}, [Lh3/g;

    move-result-object v0

    invoke-static {v0}, Li3/E;->j([Lh3/g;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v1, p0

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, LP3/i$a;

    invoke-direct {v2}, LP3/i$a;-><init>()V

    invoke-static {v1, v2}, Li3/w;->F(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LP3/h;

    invoke-virtual {v2}, LP3/h;->a()LO3/r;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LP3/h;

    if-nez v3, :cond_0

    :goto_1
    invoke-virtual {v2}, LP3/h;->a()LO3/r;

    move-result-object v3

    invoke-virtual {v3}, LO3/r;->q()LO3/r;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LP3/h;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, LP3/h;->b()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2}, LP3/h;->a()LO3/r;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v15, LP3/h;

    const/16 v18, 0x1fc

    const/16 v19, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object v4, v15

    move-object v5, v3

    move-object/from16 v22, v15

    move-object/from16 v15, v16

    move-wide/from16 v16, v20

    invoke-direct/range {v4 .. v19}, LP3/h;-><init>(LO3/r;ZLjava/lang/String;JJJILjava/lang/Long;JILv3/g;)V

    move-object/from16 v4, v22

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, LP3/h;->b()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2}, LP3/h;->a()LO3/r;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v2, v4

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static final b(II)Ljava/lang/Long;
    .locals 8

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->set(II)V

    shr-int/lit8 v0, p0, 0x9

    and-int/lit8 v0, v0, 0x7f

    add-int/lit16 v1, v0, 0x7bc

    shr-int/lit8 v0, p0, 0x5

    and-int/lit8 v0, v0, 0xf

    and-int/lit8 v3, p0, 0x1f

    shr-int/lit8 p0, p1, 0xb

    and-int/lit8 v4, p0, 0x1f

    shr-int/lit8 p0, p1, 0x5

    and-int/lit8 v5, p0, 0x3f

    and-int/lit8 p0, p1, 0x1f

    shl-int/lit8 v6, p0, 0x1

    add-int/lit8 v2, v0, -0x1

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final c(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-static {v1}, LC3/a;->a(I)I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "toString(this, checkRadix(radix))"

    invoke-static {p0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final d(LO3/r;LO3/h;Lu3/l;)LO3/A;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "zipPath"

    invoke-static {v0, v3}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "fileSystem"

    invoke-static {v1, v3}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "predicate"

    invoke-static {v2, v3}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, LO3/h;->i(LO3/r;)LO3/f;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3}, LO3/f;->t()J

    move-result-wide v4

    const/16 v6, 0x16

    int-to-long v6, v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_9

    const-wide/32 v8, 0x10000

    sub-long v8, v4, v8

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    :goto_0
    invoke-virtual {v3, v4, v5}, LO3/f;->w(J)LO3/y;

    move-result-object v10

    invoke-static {v10}, LO3/o;->b(LO3/y;)LO3/d;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-interface {v10}, LO3/d;->n()I

    move-result v11

    const v12, 0x6054b50

    if-ne v11, v12, :cond_7

    invoke-static {v10}, LP3/i;->f(LO3/d;)LP3/e;

    move-result-object v8

    invoke-virtual {v8}, LP3/e;->b()I

    move-result v9

    int-to-long v11, v9

    invoke-interface {v10, v11, v12}, LO3/d;->a(J)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    :try_start_2
    invoke-interface {v10}, LO3/y;->close()V

    const/16 v10, 0x14

    int-to-long v10, v10

    sub-long/2addr v4, v10

    cmp-long v10, v4, v6

    const/4 v11, 0x0

    if-lez v10, :cond_3

    invoke-virtual {v3, v4, v5}, LO3/f;->w(J)LO3/y;

    move-result-object v4

    invoke-static {v4}, LO3/o;->b(LO3/y;)LO3/d;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-interface {v4}, LO3/d;->n()I

    move-result v5

    const v10, 0x7064b50

    if-ne v5, v10, :cond_2

    invoke-interface {v4}, LO3/d;->n()I

    move-result v5

    invoke-interface {v4}, LO3/d;->u()J

    move-result-wide v12

    invoke-interface {v4}, LO3/d;->n()I

    move-result v10

    const/4 v14, 0x1

    if-ne v10, v14, :cond_1

    if-nez v5, :cond_1

    invoke-virtual {v3, v12, v13}, LO3/f;->w(J)LO3/y;

    move-result-object v5

    invoke-static {v5}, LO3/o;->b(LO3/y;)LO3/d;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v5}, LO3/d;->n()I

    move-result v10

    const v12, 0x6064b50

    if-ne v10, v12, :cond_0

    invoke-static {v5, v8}, LP3/i;->j(LO3/d;LP3/e;)LP3/e;

    move-result-object v8

    sget-object v10, Lh3/n;->a:Lh3/n;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {v5, v11}, Ls3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_1

    :cond_0
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad zip: expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, LP3/i;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, LP3/i;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_1
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-static {v5, v1}, Ls3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unsupported zip: spanned"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_2
    sget-object v5, Lh3/n;->a:Lh3/n;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-static {v4, v11}, Ls3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v1, v0

    goto/16 :goto_9

    :goto_3
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    :try_start_b
    invoke-static {v4, v1}, Ls3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    :goto_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, LP3/e;->a()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, LO3/f;->w(J)LO3/y;

    move-result-object v5

    invoke-static {v5}, LO3/o;->b(LO3/y;)LO3/d;

    move-result-object v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    invoke-virtual {v8}, LP3/e;->c()J

    move-result-wide v12

    :goto_5
    cmp-long v10, v6, v12

    if-gez v10, :cond_6

    invoke-static {v5}, LP3/i;->e(LO3/d;)LP3/h;

    move-result-object v10

    invoke-virtual {v10}, LP3/h;->f()J

    move-result-wide v14

    invoke-virtual {v8}, LP3/e;->a()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-gez v14, :cond_5

    invoke-interface {v2, v10}, Lu3/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v4, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v1, v0

    goto :goto_7

    :cond_4
    :goto_6
    const-wide/16 v14, 0x1

    add-long/2addr v6, v14

    goto :goto_5

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: local file header offset >= central directory offset"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    sget-object v2, Lh3/n;->a:Lh3/n;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    invoke-static {v5, v11}, Ls3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v4}, LP3/i;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    new-instance v4, LO3/A;

    invoke-direct {v4, v0, v1, v2, v9}, LO3/A;-><init>(LO3/r;LO3/h;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    invoke-static {v3, v11}, Ls3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    :goto_7
    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    :try_start_f
    invoke-static {v5, v1}, Ls3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :catchall_7
    move-exception v0

    goto :goto_8

    :cond_7
    invoke-interface {v10}, LO3/y;->close()V

    const-wide/16 v10, -0x1

    add-long/2addr v4, v10

    cmp-long v10, v4, v8

    if-ltz v10, :cond_8

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not a zip: end of central directory signature not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_8
    invoke-interface {v10}, LO3/y;->close()V

    throw v0

    :cond_9
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a zip: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, LO3/f;->t()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :goto_9
    :try_start_10
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :catchall_8
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v1}, Ls3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static final e(LO3/d;)LP3/h;
    .locals 29

    move-object/from16 v8, p0

    const-string v0, "<this>"

    invoke-static {v8, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, LO3/d;->n()I

    move-result v0

    const v1, 0x2014b50

    if-ne v0, v1, :cond_7

    const-wide/16 v0, 0x4

    invoke-interface {v8, v0, v1}, LO3/d;->skip(J)V

    invoke-interface/range {p0 .. p0}, LO3/d;->q()S

    move-result v0

    const v1, 0xffff

    and-int v2, v0, v1

    const/4 v9, 0x1

    and-int/2addr v0, v9

    if-nez v0, :cond_6

    invoke-interface/range {p0 .. p0}, LO3/d;->q()S

    move-result v0

    and-int v20, v0, v1

    invoke-interface/range {p0 .. p0}, LO3/d;->q()S

    move-result v0

    and-int/2addr v0, v1

    invoke-interface/range {p0 .. p0}, LO3/d;->q()S

    move-result v2

    and-int/2addr v2, v1

    invoke-static {v2, v0}, LP3/i;->b(II)Ljava/lang/Long;

    move-result-object v21

    invoke-interface/range {p0 .. p0}, LO3/d;->n()I

    move-result v0

    int-to-long v2, v0

    const-wide v4, 0xffffffffL

    and-long v14, v2, v4

    new-instance v10, Lv3/v;

    invoke-direct {v10}, Lv3/v;-><init>()V

    invoke-interface/range {p0 .. p0}, LO3/d;->n()I

    move-result v0

    int-to-long v2, v0

    and-long/2addr v2, v4

    iput-wide v2, v10, Lv3/v;->e:J

    new-instance v11, Lv3/v;

    invoke-direct {v11}, Lv3/v;-><init>()V

    invoke-interface/range {p0 .. p0}, LO3/d;->n()I

    move-result v0

    int-to-long v2, v0

    and-long/2addr v2, v4

    iput-wide v2, v11, Lv3/v;->e:J

    invoke-interface/range {p0 .. p0}, LO3/d;->q()S

    move-result v0

    and-int/2addr v0, v1

    invoke-interface/range {p0 .. p0}, LO3/d;->q()S

    move-result v2

    and-int v12, v2, v1

    invoke-interface/range {p0 .. p0}, LO3/d;->q()S

    move-result v2

    and-int v13, v2, v1

    const-wide/16 v1, 0x8

    invoke-interface {v8, v1, v2}, LO3/d;->skip(J)V

    new-instance v7, Lv3/v;

    invoke-direct {v7}, Lv3/v;-><init>()V

    invoke-interface/range {p0 .. p0}, LO3/d;->n()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v4

    iput-wide v1, v7, Lv3/v;->e:J

    int-to-long v0, v0

    invoke-interface {v8, v0, v1}, LO3/d;->a(J)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x0

    invoke-static {v6, v2, v2, v3, v1}, LC3/p;->y(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-wide v1, v11, Lv3/v;->e:J

    cmp-long v0, v1, v4

    const-wide/16 v18, 0x0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    int-to-long v3, v1

    move-wide/from16 v24, v3

    goto :goto_0

    :cond_0
    move-wide/from16 v24, v18

    :goto_0
    iget-wide v2, v10, Lv3/v;->e:J

    const-wide v22, 0xffffffffL

    cmp-long v0, v2, v22

    if-nez v0, :cond_1

    int-to-long v2, v1

    add-long v3, v24, v2

    :goto_1
    move-object/from16 v24, v6

    goto :goto_2

    :cond_1
    move-wide/from16 v3, v24

    goto :goto_1

    :goto_2
    iget-wide v5, v7, Lv3/v;->e:J

    cmp-long v0, v5, v22

    if-nez v0, :cond_2

    int-to-long v0, v1

    add-long/2addr v3, v0

    :cond_2
    move-wide/from16 v22, v3

    new-instance v6, Lv3/t;

    invoke-direct {v6}, Lv3/t;-><init>()V

    new-instance v5, LP3/i$b;

    move-object v0, v5

    const/4 v4, 0x0

    move-object v1, v6

    move-wide/from16 v25, v14

    const/4 v14, 0x0

    const/4 v15, 0x2

    move-wide/from16 v2, v22

    move-object v15, v4

    move-object v4, v11

    move-object v9, v5

    move-object/from16 v5, p0

    move-object v14, v6

    move-object/from16 v27, v24

    move-object v6, v10

    move-object/from16 v28, v7

    invoke-direct/range {v0 .. v7}, LP3/i$b;-><init>(Lv3/t;JLv3/v;LO3/d;Lv3/v;Lv3/v;)V

    invoke-static {v8, v12, v9}, LP3/i;->g(LO3/d;ILu3/p;)V

    cmp-long v0, v22, v18

    if-lez v0, :cond_4

    iget-boolean v0, v14, Lv3/t;->e:Z

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: zip64 extra required but absent"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_3
    int-to-long v0, v13

    invoke-interface {v8, v0, v1}, LO3/d;->a(J)Ljava/lang/String;

    move-result-object v13

    sget-object v0, LO3/r;->f:LO3/r$a;

    const-string v1, "/"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v15}, LO3/r$a;->e(LO3/r$a;Ljava/lang/String;ZILjava/lang/Object;)LO3/r;

    move-result-object v0

    move-object/from16 v2, v27

    invoke-virtual {v0, v2}, LO3/r;->t(Ljava/lang/String;)LO3/r;

    move-result-object v0

    const/4 v4, 0x2

    invoke-static {v2, v1, v3, v4, v15}, LC3/o;->n(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v12

    new-instance v1, LP3/h;

    iget-wide v2, v10, Lv3/v;->e:J

    iget-wide v4, v11, Lv3/v;->e:J

    move-object/from16 v6, v28

    iget-wide v6, v6, Lv3/v;->e:J

    move-object v10, v1

    move-object v11, v0

    move-wide/from16 v14, v25

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move-wide/from16 v22, v6

    invoke-direct/range {v10 .. v23}, LP3/h;-><init>(LO3/r;ZLjava/lang/String;JJJILjava/lang/Long;J)V

    return-object v1

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: filename contains 0x00"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported zip: general purpose bit flag="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, LP3/i;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad zip: expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, LP3/i;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, LP3/i;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final f(LO3/d;)LP3/e;
    .locals 10

    invoke-interface {p0}, LO3/d;->q()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-interface {p0}, LO3/d;->q()S

    move-result v2

    and-int/2addr v2, v1

    invoke-interface {p0}, LO3/d;->q()S

    move-result v3

    and-int/2addr v3, v1

    int-to-long v5, v3

    invoke-interface {p0}, LO3/d;->q()S

    move-result v3

    and-int/2addr v3, v1

    int-to-long v3, v3

    cmp-long v3, v5, v3

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    const-wide/16 v2, 0x4

    invoke-interface {p0, v2, v3}, LO3/d;->skip(J)V

    invoke-interface {p0}, LO3/d;->n()I

    move-result v0

    int-to-long v2, v0

    const-wide v7, 0xffffffffL

    and-long/2addr v7, v2

    invoke-interface {p0}, LO3/d;->q()S

    move-result p0

    and-int v9, p0, v1

    new-instance p0, LP3/e;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, LP3/e;-><init>(JJI)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unsupported zip: spanned"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final g(LO3/d;ILu3/p;)V
    .locals 10

    int-to-long v0, p1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_4

    const-wide/16 v4, 0x4

    cmp-long p1, v0, v4

    if-ltz p1, :cond_3

    invoke-interface {p0}, LO3/d;->q()S

    move-result p1

    const v4, 0xffff

    and-int/2addr p1, v4

    invoke-interface {p0}, LO3/d;->q()S

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    const/4 v6, 0x4

    int-to-long v6, v6

    sub-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-ltz v6, :cond_2

    invoke-interface {p0, v4, v5}, LO3/d;->A(J)V

    invoke-interface {p0}, LO3/d;->o()LO3/b;

    move-result-object v6

    invoke-virtual {v6}, LO3/b;->H()J

    move-result-wide v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lu3/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, LO3/d;->o()LO3/b;

    move-result-object v8

    invoke-virtual {v8}, LO3/b;->H()J

    move-result-wide v8

    add-long/2addr v8, v4

    sub-long/2addr v8, v6

    cmp-long v2, v8, v2

    if-ltz v2, :cond_1

    if-lez v2, :cond_0

    invoke-interface {p0}, LO3/d;->o()LO3/b;

    move-result-object p1

    invoke-virtual {p1, v8, v9}, LO3/b;->skip(J)V

    :cond_0
    sub-long/2addr v0, v4

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupported zip: too many bytes processed for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: truncated value in extra field"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: truncated header in extra field"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method public static final h(LO3/d;LO3/g;)LO3/g;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "basicMetadata"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LP3/i;->i(LO3/d;LO3/g;)LO3/g;

    move-result-object p0

    invoke-static {p0}, Lv3/l;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final i(LO3/d;LO3/g;)LO3/g;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Lv3/w;

    invoke-direct {v1}, Lv3/w;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, LO3/g;->a()Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iput-object v3, v1, Lv3/w;->e:Ljava/lang/Object;

    new-instance v3, Lv3/w;

    invoke-direct {v3}, Lv3/w;-><init>()V

    new-instance v4, Lv3/w;

    invoke-direct {v4}, Lv3/w;-><init>()V

    invoke-interface/range {p0 .. p0}, LO3/d;->n()I

    move-result v5

    const v6, 0x4034b50

    if-ne v5, v6, :cond_3

    const-wide/16 v5, 0x2

    invoke-interface {v0, v5, v6}, LO3/d;->skip(J)V

    invoke-interface/range {p0 .. p0}, LO3/d;->q()S

    move-result v5

    const v6, 0xffff

    and-int v7, v5, v6

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    const-wide/16 v7, 0x12

    invoke-interface {v0, v7, v8}, LO3/d;->skip(J)V

    invoke-interface/range {p0 .. p0}, LO3/d;->q()S

    move-result v5

    int-to-long v7, v5

    const-wide/32 v9, 0xffff

    and-long/2addr v7, v9

    invoke-interface/range {p0 .. p0}, LO3/d;->q()S

    move-result v5

    and-int/2addr v5, v6

    invoke-interface {v0, v7, v8}, LO3/d;->skip(J)V

    if-nez p1, :cond_1

    int-to-long v3, v5

    invoke-interface {v0, v3, v4}, LO3/d;->skip(J)V

    return-object v2

    :cond_1
    new-instance v2, LP3/i$c;

    invoke-direct {v2, v0, v1, v3, v4}, LP3/i$c;-><init>(LO3/d;Lv3/w;Lv3/w;Lv3/w;)V

    invoke-static {v0, v5, v2}, LP3/i;->g(LO3/d;ILu3/p;)V

    new-instance v0, LO3/g;

    invoke-virtual/range {p1 .. p1}, LO3/g;->d()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, LO3/g;->c()Z

    move-result v8

    invoke-virtual/range {p1 .. p1}, LO3/g;->b()Ljava/lang/Long;

    move-result-object v10

    iget-object v2, v4, Lv3/w;->e:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Ljava/lang/Long;

    iget-object v1, v1, Lv3/w;->e:Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, Ljava/lang/Long;

    iget-object v1, v3, Lv3/w;->e:Ljava/lang/Object;

    move-object v13, v1

    check-cast v13, Ljava/lang/Long;

    const/16 v15, 0x80

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v16}, LO3/g;-><init>(ZZLO3/r;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;ILv3/g;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported zip: general purpose bit flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, LP3/i;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad zip: expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, LP3/i;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, LP3/i;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final j(LO3/d;LP3/e;)LP3/e;
    .locals 8

    const-wide/16 v0, 0xc

    invoke-interface {p0, v0, v1}, LO3/d;->skip(J)V

    invoke-interface {p0}, LO3/d;->n()I

    move-result v0

    invoke-interface {p0}, LO3/d;->n()I

    move-result v1

    invoke-interface {p0}, LO3/d;->u()J

    move-result-wide v3

    invoke-interface {p0}, LO3/d;->u()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const-wide/16 v0, 0x8

    invoke-interface {p0, v0, v1}, LO3/d;->skip(J)V

    invoke-interface {p0}, LO3/d;->u()J

    move-result-wide v5

    new-instance p0, LP3/e;

    invoke-virtual {p1}, LP3/e;->b()I

    move-result v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, LP3/e;-><init>(JJI)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unsupported zip: spanned"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final k(LO3/d;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, LP3/i;->i(LO3/d;LO3/g;)LO3/g;

    return-void
.end method
