.class public final Lw1/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR1/b;


# instance fields
.field public final a:Lw1/e;

.field public final b:I

.field public final c:Lw1/b;

.field public final d:J

.field public final e:J


# direct methods
.method public constructor <init>(Lw1/e;ILw1/b;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/F;->a:Lw1/e;

    iput p2, p0, Lw1/F;->b:I

    iput-object p3, p0, Lw1/F;->c:Lw1/b;

    iput-wide p4, p0, Lw1/F;->d:J

    iput-wide p6, p0, Lw1/F;->e:J

    return-void
.end method

.method public static b(Lw1/e;ILw1/b;)Lw1/F;
    .locals 12

    invoke-virtual {p0}, Lw1/e;->v()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lz1/p;->b()Lz1/p;

    move-result-object v0

    invoke-virtual {v0}, Lz1/p;->a()Lz1/q;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lz1/q;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lz1/q;->h()Z

    move-result v0

    invoke-virtual {p0, p2}, Lw1/e;->r(Lw1/b;)Lw1/w;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lw1/w;->t()Lv1/a$f;

    move-result-object v2

    instance-of v2, v2, Lz1/d;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lw1/w;->t()Lv1/a$f;

    move-result-object v2

    check-cast v2, Lz1/d;

    invoke-virtual {v2}, Lz1/d;->I()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lz1/d;->j()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v1, v2, p1}, Lw1/F;->c(Lw1/w;Lz1/d;I)Lz1/f;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lw1/w;->D()V

    invoke-virtual {v0}, Lz1/f;->i()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_1
    new-instance v11, Lw1/F;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-wide v5, v3

    goto :goto_2

    :cond_4
    move-wide v5, v1

    :goto_2
    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    move-wide v7, v0

    goto :goto_3

    :cond_5
    move-wide v7, v1

    :goto_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v10}, Lw1/F;-><init>(Lw1/e;ILw1/b;JJLjava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method public static c(Lw1/w;Lz1/d;I)Lz1/f;
    .locals 2

    invoke-virtual {p1}, Lz1/d;->G()Lz1/f;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lz1/f;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lz1/f;->e()[I

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lz1/f;->g()[I

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, p2}, LD1/b;->a([II)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_1
    invoke-static {v1, p2}, LD1/b;->a([II)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lw1/w;->C()I

    move-result p0

    invoke-virtual {p1}, Lz1/f;->d()I

    move-result p2

    if-ge p0, p2, :cond_3

    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final a(LR1/f;)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lw1/F;->a:Lw1/e;

    invoke-virtual {v1}, Lw1/e;->v()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-static {}, Lz1/p;->b()Lz1/p;

    move-result-object v2

    invoke-virtual {v2}, Lz1/p;->a()Lz1/q;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lz1/q;->g()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_1
    iget-object v3, v0, Lw1/F;->c:Lw1/b;

    invoke-virtual {v1, v3}, Lw1/e;->r(Lw1/b;)Lw1/w;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lw1/w;->t()Lv1/a$f;

    move-result-object v4

    instance-of v4, v4, Lz1/d;

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Lw1/w;->t()Lv1/a$f;

    move-result-object v4

    check-cast v4, Lz1/d;

    iget-wide v5, v0, Lw1/F;->d:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-lez v9, :cond_2

    move v12, v10

    goto :goto_0

    :cond_2
    move v12, v11

    :goto_0
    invoke-virtual {v4}, Lz1/d;->y()I

    move-result v23

    const/16 v13, 0x64

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lz1/q;->h()Z

    move-result v14

    and-int/2addr v12, v14

    invoke-virtual {v2}, Lz1/q;->d()I

    move-result v14

    invoke-virtual {v2}, Lz1/q;->e()I

    move-result v15

    invoke-virtual {v2}, Lz1/q;->i()I

    move-result v2

    invoke-virtual {v4}, Lz1/d;->I()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-virtual {v4}, Lz1/d;->j()Z

    move-result v16

    if-nez v16, :cond_4

    iget v12, v0, Lw1/F;->b:I

    invoke-static {v3, v4, v12}, Lw1/F;->c(Lw1/w;Lz1/d;I)Lz1/f;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lz1/f;->i()Z

    move-result v4

    if-eqz v4, :cond_3

    if-lez v9, :cond_3

    goto :goto_1

    :cond_3
    move v10, v11

    :goto_1
    invoke-virtual {v3}, Lz1/f;->d()I

    move-result v3

    move v9, v3

    move v12, v10

    move v3, v2

    :goto_2
    move v2, v14

    goto :goto_3

    :cond_4
    move v3, v2

    move v2, v14

    move v9, v15

    goto :goto_3

    :cond_5
    const/16 v14, 0x1388

    move v3, v11

    move v9, v13

    goto :goto_2

    :goto_3
    invoke-virtual/range {p1 .. p1}, LR1/f;->i()Z

    move-result v4

    const/4 v10, -0x1

    if-eqz v4, :cond_6

    move v15, v11

    move/from16 v16, v15

    goto :goto_6

    :cond_6
    invoke-virtual/range {p1 .. p1}, LR1/f;->g()Z

    move-result v4

    if-eqz v4, :cond_7

    move/from16 v16, v10

    move v15, v13

    goto :goto_6

    :cond_7
    invoke-virtual/range {p1 .. p1}, LR1/f;->e()Ljava/lang/Exception;

    move-result-object v4

    instance-of v11, v4, Lv1/b;

    if-eqz v11, :cond_9

    check-cast v4, Lv1/b;

    invoke-virtual {v4}, Lv1/b;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Status;->e()I

    move-result v11

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Status;->d()Lu1/a;

    move-result-object v4

    if-nez v4, :cond_8

    :goto_4
    move/from16 v16, v10

    :goto_5
    move v15, v11

    goto :goto_6

    :cond_8
    invoke-virtual {v4}, Lu1/a;->d()I

    move-result v4

    move/from16 v16, v4

    goto :goto_5

    :cond_9
    const/16 v11, 0x65

    goto :goto_4

    :goto_6
    if-eqz v12, :cond_a

    iget-wide v7, v0, Lw1/F;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v7

    long-to-int v4, v12

    move/from16 v24, v4

    move-wide/from16 v17, v5

    move-wide/from16 v19, v10

    goto :goto_7

    :cond_a
    move-wide/from16 v17, v7

    move-wide/from16 v19, v17

    move/from16 v24, v10

    :goto_7
    iget v14, v0, Lw1/F;->b:I

    new-instance v4, Lz1/m;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v13, v4

    invoke-direct/range {v13 .. v24}, Lz1/m;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    int-to-long v5, v2

    move-object v2, v4

    move-wide v4, v5

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Lw1/e;->y(Lz1/m;IJI)V

    :cond_b
    :goto_8
    return-void
.end method
