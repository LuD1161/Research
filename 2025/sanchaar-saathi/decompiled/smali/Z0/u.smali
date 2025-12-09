.class public final LZ0/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZ0/u$b;,
        LZ0/u$a;
    }
.end annotation


# static fields
.field public static final u:LZ0/u$a;

.field public static final v:Ljava/lang/String;

.field public static final w:Ls/a;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:LQ0/s;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Landroidx/work/b;

.field public f:Landroidx/work/b;

.field public g:J

.field public h:J

.field public i:J

.field public j:LQ0/b;

.field public k:I

.field public l:LQ0/a;

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:Z

.field public r:LQ0/m;

.field public s:I

.field public final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LZ0/u$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LZ0/u$a;-><init>(Lv3/g;)V

    sput-object v0, LZ0/u;->u:LZ0/u$a;

    const-string v0, "WorkSpec"

    invoke-static {v0}, LQ0/i;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"WorkSpec\")"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, LZ0/u;->v:Ljava/lang/String;

    new-instance v0, LZ0/t;

    invoke-direct {v0}, LZ0/t;-><init>()V

    sput-object v0, LZ0/u;->w:Ls/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LQ0/s;Ljava/lang/String;Ljava/lang/String;Landroidx/work/b;Landroidx/work/b;JJJLQ0/b;ILQ0/a;JJJJZLQ0/m;II)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p13

    move-object/from16 v7, p15

    move-object/from16 v8, p25

    const-string v9, "id"

    invoke-static {p1, v9}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "state"

    invoke-static {p2, v9}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "workerClassName"

    invoke-static {p3, v9}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "input"

    invoke-static {p5, v9}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "output"

    invoke-static {v5, v9}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "constraints"

    invoke-static {v6, v9}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "backoffPolicy"

    invoke-static {v7, v9}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "outOfQuotaPolicy"

    invoke-static {v8, v9}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v1, v0, LZ0/u;->a:Ljava/lang/String;

    .line 3
    iput-object v2, v0, LZ0/u;->b:LQ0/s;

    .line 4
    iput-object v3, v0, LZ0/u;->c:Ljava/lang/String;

    move-object v1, p4

    .line 5
    iput-object v1, v0, LZ0/u;->d:Ljava/lang/String;

    .line 6
    iput-object v4, v0, LZ0/u;->e:Landroidx/work/b;

    .line 7
    iput-object v5, v0, LZ0/u;->f:Landroidx/work/b;

    move-wide/from16 v1, p7

    .line 8
    iput-wide v1, v0, LZ0/u;->g:J

    move-wide/from16 v1, p9

    .line 9
    iput-wide v1, v0, LZ0/u;->h:J

    move-wide/from16 v1, p11

    .line 10
    iput-wide v1, v0, LZ0/u;->i:J

    .line 11
    iput-object v6, v0, LZ0/u;->j:LQ0/b;

    move/from16 v1, p14

    .line 12
    iput v1, v0, LZ0/u;->k:I

    .line 13
    iput-object v7, v0, LZ0/u;->l:LQ0/a;

    move-wide/from16 v1, p16

    .line 14
    iput-wide v1, v0, LZ0/u;->m:J

    move-wide/from16 v1, p18

    .line 15
    iput-wide v1, v0, LZ0/u;->n:J

    move-wide/from16 v1, p20

    .line 16
    iput-wide v1, v0, LZ0/u;->o:J

    move-wide/from16 v1, p22

    .line 17
    iput-wide v1, v0, LZ0/u;->p:J

    move/from16 v1, p24

    .line 18
    iput-boolean v1, v0, LZ0/u;->q:Z

    .line 19
    iput-object v8, v0, LZ0/u;->r:LQ0/m;

    move/from16 v1, p26

    .line 20
    iput v1, v0, LZ0/u;->s:I

    move/from16 v1, p27

    .line 21
    iput v1, v0, LZ0/u;->t:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;LQ0/s;Ljava/lang/String;Ljava/lang/String;Landroidx/work/b;Landroidx/work/b;JJJLQ0/b;ILQ0/a;JJJJZLQ0/m;IIILv3/g;)V
    .locals 30

    move/from16 v0, p28

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 22
    sget-object v1, LQ0/s;->e:LQ0/s;

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    .line 23
    const-string v2, "EMPTY"

    if-eqz v1, :cond_2

    .line 24
    sget-object v1, Landroidx/work/b;->c:Landroidx/work/b;

    invoke-static {v1, v2}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 25
    sget-object v1, Landroidx/work/b;->c:Landroidx/work/b;

    invoke-static {v1, v2}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_4

    move-wide v9, v2

    goto :goto_4

    :cond_4
    move-wide/from16 v9, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-wide v11, v2

    goto :goto_5

    :cond_5
    move-wide/from16 v11, p9

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-wide v13, v2

    goto :goto_6

    :cond_6
    move-wide/from16 v13, p11

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    .line 26
    sget-object v1, LQ0/b;->j:LQ0/b;

    move-object v15, v1

    goto :goto_7

    :cond_7
    move-object/from16 v15, p13

    :goto_7
    and-int/lit16 v1, v0, 0x400

    const/4 v5, 0x0

    if-eqz v1, :cond_8

    move/from16 v16, v5

    goto :goto_8

    :cond_8
    move/from16 v16, p14

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    .line 27
    sget-object v1, LQ0/a;->e:LQ0/a;

    move-object/from16 v17, v1

    goto :goto_9

    :cond_9
    move-object/from16 v17, p15

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    const-wide/16 v18, 0x7530

    goto :goto_a

    :cond_a
    move-wide/from16 v18, p16

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    move-wide/from16 v20, v2

    goto :goto_b

    :cond_b
    move-wide/from16 v20, p18

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    move-wide/from16 v22, v2

    goto :goto_c

    :cond_c
    move-wide/from16 v22, p20

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    const-wide/16 v1, -0x1

    move-wide/from16 v24, v1

    goto :goto_d

    :cond_d
    move-wide/from16 v24, p22

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move/from16 v26, v5

    goto :goto_e

    :cond_e
    move/from16 v26, p24

    :goto_e
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    .line 28
    sget-object v1, LQ0/m;->e:LQ0/m;

    move-object/from16 v27, v1

    goto :goto_f

    :cond_f
    move-object/from16 v27, p25

    :goto_f
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move/from16 v28, v5

    goto :goto_10

    :cond_10
    move/from16 v28, p26

    :goto_10
    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    move/from16 v29, v5

    goto :goto_11

    :cond_11
    move/from16 v29, p27

    :goto_11
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    .line 29
    invoke-direct/range {v2 .. v29}, LZ0/u;-><init>(Ljava/lang/String;LQ0/s;Ljava/lang/String;Ljava/lang/String;Landroidx/work/b;Landroidx/work/b;JJJLQ0/b;ILQ0/a;JJJJZLQ0/m;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LZ0/u;)V
    .locals 33

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "newId"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "other"

    invoke-static {v0, v3}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v4, v0, LZ0/u;->c:Ljava/lang/String;

    .line 32
    iget-object v3, v0, LZ0/u;->b:LQ0/s;

    .line 33
    iget-object v5, v0, LZ0/u;->d:Ljava/lang/String;

    .line 34
    new-instance v7, Landroidx/work/b;

    move-object v6, v7

    iget-object v8, v0, LZ0/u;->e:Landroidx/work/b;

    invoke-direct {v7, v8}, Landroidx/work/b;-><init>(Landroidx/work/b;)V

    .line 35
    new-instance v8, Landroidx/work/b;

    move-object v7, v8

    iget-object v9, v0, LZ0/u;->f:Landroidx/work/b;

    invoke-direct {v8, v9}, Landroidx/work/b;-><init>(Landroidx/work/b;)V

    .line 36
    iget-wide v8, v0, LZ0/u;->g:J

    .line 37
    iget-wide v10, v0, LZ0/u;->h:J

    .line 38
    iget-wide v12, v0, LZ0/u;->i:J

    .line 39
    new-instance v15, LQ0/b;

    move-object v14, v15

    move-object/from16 v31, v1

    iget-object v1, v0, LZ0/u;->j:LQ0/b;

    invoke-direct {v15, v1}, LQ0/b;-><init>(LQ0/b;)V

    .line 40
    iget v15, v0, LZ0/u;->k:I

    .line 41
    iget-object v1, v0, LZ0/u;->l:LQ0/a;

    move-object/from16 v16, v1

    move-object/from16 v32, v2

    .line 42
    iget-wide v1, v0, LZ0/u;->m:J

    move-wide/from16 v17, v1

    .line 43
    iget-wide v1, v0, LZ0/u;->n:J

    move-wide/from16 v19, v1

    .line 44
    iget-wide v1, v0, LZ0/u;->o:J

    move-wide/from16 v21, v1

    .line 45
    iget-wide v1, v0, LZ0/u;->p:J

    move-wide/from16 v23, v1

    .line 46
    iget-boolean v1, v0, LZ0/u;->q:Z

    move/from16 v25, v1

    .line 47
    iget-object v1, v0, LZ0/u;->r:LQ0/m;

    move-object/from16 v26, v1

    .line 48
    iget v0, v0, LZ0/u;->s:I

    move/from16 v27, v0

    const/high16 v29, 0x80000

    const/16 v30, 0x0

    const/16 v28, 0x0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    .line 49
    invoke-direct/range {v1 .. v30}, LZ0/u;-><init>(Ljava/lang/String;LQ0/s;Ljava/lang/String;Ljava/lang/String;Landroidx/work/b;Landroidx/work/b;JJJLQ0/b;ILQ0/a;JJJJZLQ0/m;IIILv3/g;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    const-string v2, "id"

    move-object/from16 v4, p1

    invoke-static {v4, v2}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "workerClassName_"

    move-object/from16 v4, p2

    invoke-static {v4, v2}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v28, 0xffffa

    const/16 v29, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 30
    invoke-direct/range {v0 .. v29}, LZ0/u;-><init>(Ljava/lang/String;LQ0/s;Ljava/lang/String;Ljava/lang/String;Landroidx/work/b;Landroidx/work/b;JJJLQ0/b;ILQ0/a;JJJJZLQ0/m;IIILv3/g;)V

    return-void
.end method

.method public static synthetic c(LZ0/u;Ljava/lang/String;LQ0/s;Ljava/lang/String;Ljava/lang/String;Landroidx/work/b;Landroidx/work/b;JJJLQ0/b;ILQ0/a;JJJJZLQ0/m;IIILjava/lang/Object;)LZ0/u;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p28

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, LZ0/u;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, LZ0/u;->b:LQ0/s;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, LZ0/u;->c:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, LZ0/u;->d:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, LZ0/u;->e:Landroidx/work/b;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, LZ0/u;->f:Landroidx/work/b;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-wide v8, v0, LZ0/u;->g:J

    goto :goto_6

    :cond_6
    move-wide/from16 v8, p7

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-wide v10, v0, LZ0/u;->h:J

    goto :goto_7

    :cond_7
    move-wide/from16 v10, p9

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-wide v12, v0, LZ0/u;->i:J

    goto :goto_8

    :cond_8
    move-wide/from16 v12, p11

    :goto_8
    and-int/lit16 v14, v1, 0x200

    if-eqz v14, :cond_9

    iget-object v14, v0, LZ0/u;->j:LQ0/b;

    goto :goto_9

    :cond_9
    move-object/from16 v14, p13

    :goto_9
    and-int/lit16 v15, v1, 0x400

    if-eqz v15, :cond_a

    iget v15, v0, LZ0/u;->k:I

    goto :goto_a

    :cond_a
    move/from16 v15, p14

    :goto_a
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    iget-object v15, v0, LZ0/u;->l:LQ0/a;

    goto :goto_b

    :cond_b
    move-object/from16 v15, p15

    :goto_b
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x1000

    move-object/from16 p13, v14

    if-eqz v15, :cond_c

    iget-wide v14, v0, LZ0/u;->m:J

    goto :goto_c

    :cond_c
    move-wide/from16 v14, p16

    :goto_c
    move-wide/from16 p16, v14

    and-int/lit16 v14, v1, 0x2000

    if-eqz v14, :cond_d

    iget-wide v14, v0, LZ0/u;->n:J

    goto :goto_d

    :cond_d
    move-wide/from16 v14, p18

    :goto_d
    move-wide/from16 p18, v14

    and-int/lit16 v14, v1, 0x4000

    if-eqz v14, :cond_e

    iget-wide v14, v0, LZ0/u;->o:J

    goto :goto_e

    :cond_e
    move-wide/from16 v14, p20

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-wide/from16 p20, v14

    if-eqz v16, :cond_f

    iget-wide v14, v0, LZ0/u;->p:J

    goto :goto_f

    :cond_f
    move-wide/from16 v14, p22

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-wide/from16 p22, v14

    if-eqz v16, :cond_10

    iget-boolean v14, v0, LZ0/u;->q:Z

    goto :goto_10

    :cond_10
    move/from16 v14, p24

    :goto_10
    const/high16 v15, 0x20000

    and-int/2addr v15, v1

    if-eqz v15, :cond_11

    iget-object v15, v0, LZ0/u;->r:LQ0/m;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p25

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_12

    iget v15, v0, LZ0/u;->s:I

    goto :goto_12

    :cond_12
    move/from16 v15, p26

    :goto_12
    const/high16 v16, 0x80000

    and-int v1, v1, v16

    if-eqz v1, :cond_13

    iget v1, v0, LZ0/u;->t:I

    goto :goto_13

    :cond_13
    move/from16 v1, p27

    :goto_13
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-wide/from16 p7, v8

    move-wide/from16 p9, v10

    move-wide/from16 p11, v12

    move/from16 p24, v14

    move/from16 p26, v15

    move/from16 p27, v1

    invoke-virtual/range {p0 .. p27}, LZ0/u;->b(Ljava/lang/String;LQ0/s;Ljava/lang/String;Ljava/lang/String;Landroidx/work/b;Landroidx/work/b;JJJLQ0/b;ILQ0/a;JJJJZLQ0/m;II)LZ0/u;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 10

    invoke-virtual {p0}, LZ0/u;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LZ0/u;->l:LQ0/a;

    sget-object v1, LQ0/a;->f:LQ0/a;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, LZ0/u;->m:J

    iget v2, p0, LZ0/u;->k:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-wide v0, p0, LZ0/u;->m:J

    long-to-float v0, v0

    iget v1, p0, LZ0/u;->k:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-long v0, v0

    :goto_0
    iget-wide v2, p0, LZ0/u;->n:J

    const-wide/32 v4, 0x112a880

    invoke-static {v0, v1, v4, v5}, Lz3/e;->d(JJ)J

    move-result-wide v0

    add-long/2addr v2, v0

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, LZ0/u;->h()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_6

    iget v0, p0, LZ0/u;->s:I

    iget-wide v3, p0, LZ0/u;->n:J

    if-nez v0, :cond_2

    iget-wide v5, p0, LZ0/u;->g:J

    add-long/2addr v3, v5

    :cond_2
    iget-wide v5, p0, LZ0/u;->i:J

    iget-wide v7, p0, LZ0/u;->h:J

    cmp-long v9, v5, v7

    if-eqz v9, :cond_4

    if-nez v0, :cond_3

    const/4 v0, -0x1

    int-to-long v0, v0

    mul-long v1, v0, v5

    :cond_3
    add-long/2addr v3, v7

    :goto_1
    add-long v2, v3, v1

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move-wide v1, v7

    goto :goto_1

    :cond_6
    iget-wide v3, p0, LZ0/u;->n:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :cond_7
    iget-wide v0, p0, LZ0/u;->g:J

    add-long v2, v3, v0

    :goto_2
    return-wide v2
.end method

.method public final b(Ljava/lang/String;LQ0/s;Ljava/lang/String;Ljava/lang/String;Landroidx/work/b;Landroidx/work/b;JJJLQ0/b;ILQ0/a;JJJJZLQ0/m;II)LZ0/u;
    .locals 30

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-object/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-wide/from16 v16, p16

    move-wide/from16 v18, p18

    move-wide/from16 v20, p20

    move-wide/from16 v22, p22

    move/from16 v24, p24

    move-object/from16 v25, p25

    move/from16 v26, p26

    move/from16 v27, p27

    const-string v0, "id"

    move-object/from16 v28, v1

    invoke-static {v1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerClassName"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constraints"

    move-object/from16 v1, p13

    invoke-static {v1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backoffPolicy"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outOfQuotaPolicy"

    move-object/from16 v1, p25

    invoke-static {v1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v29, LZ0/u;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct/range {v0 .. v27}, LZ0/u;-><init>(Ljava/lang/String;LQ0/s;Ljava/lang/String;Ljava/lang/String;Landroidx/work/b;Landroidx/work/b;JJJLQ0/b;ILQ0/a;JJJJZLQ0/m;II)V

    return-object v29
.end method

.method public final d()I
    .locals 1

    iget v0, p0, LZ0/u;->t:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, LZ0/u;->s:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LZ0/u;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LZ0/u;

    iget-object v1, p0, LZ0/u;->a:Ljava/lang/String;

    iget-object v3, p1, LZ0/u;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, LZ0/u;->b:LQ0/s;

    iget-object v3, p1, LZ0/u;->b:LQ0/s;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, LZ0/u;->c:Ljava/lang/String;

    iget-object v3, p1, LZ0/u;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, LZ0/u;->d:Ljava/lang/String;

    iget-object v3, p1, LZ0/u;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, LZ0/u;->e:Landroidx/work/b;

    iget-object v3, p1, LZ0/u;->e:Landroidx/work/b;

    invoke-static {v1, v3}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, LZ0/u;->f:Landroidx/work/b;

    iget-object v3, p1, LZ0/u;->f:Landroidx/work/b;

    invoke-static {v1, v3}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, LZ0/u;->g:J

    iget-wide v5, p1, LZ0/u;->g:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, LZ0/u;->h:J

    iget-wide v5, p1, LZ0/u;->h:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, LZ0/u;->i:J

    iget-wide v5, p1, LZ0/u;->i:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, LZ0/u;->j:LQ0/b;

    iget-object v3, p1, LZ0/u;->j:LQ0/b;

    invoke-static {v1, v3}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, LZ0/u;->k:I

    iget v3, p1, LZ0/u;->k:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, LZ0/u;->l:LQ0/a;

    iget-object v3, p1, LZ0/u;->l:LQ0/a;

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, LZ0/u;->m:J

    iget-wide v5, p1, LZ0/u;->m:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_e

    return v2

    :cond_e
    iget-wide v3, p0, LZ0/u;->n:J

    iget-wide v5, p1, LZ0/u;->n:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_f

    return v2

    :cond_f
    iget-wide v3, p0, LZ0/u;->o:J

    iget-wide v5, p1, LZ0/u;->o:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_10

    return v2

    :cond_10
    iget-wide v3, p0, LZ0/u;->p:J

    iget-wide v5, p1, LZ0/u;->p:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, LZ0/u;->q:Z

    iget-boolean v3, p1, LZ0/u;->q:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, LZ0/u;->r:LQ0/m;

    iget-object v3, p1, LZ0/u;->r:LQ0/m;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, LZ0/u;->s:I

    iget v3, p1, LZ0/u;->s:I

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget v1, p0, LZ0/u;->t:I

    iget p1, p1, LZ0/u;->t:I

    if-eq v1, p1, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public final f()Z
    .locals 2

    sget-object v0, LQ0/b;->j:LQ0/b;

    iget-object v1, p0, LZ0/u;->j:LQ0/b;

    invoke-static {v0, v1}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, LZ0/u;->b:LQ0/s;

    sget-object v1, LQ0/s;->e:LQ0/s;

    if-ne v0, v1, :cond_0

    iget v0, p0, LZ0/u;->k:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h()Z
    .locals 4

    iget-wide v0, p0, LZ0/u;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, LZ0/u;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LZ0/u;->b:LQ0/s;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LZ0/u;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LZ0/u;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LZ0/u;->e:Landroidx/work/b;

    invoke-virtual {v1}, Landroidx/work/b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LZ0/u;->f:Landroidx/work/b;

    invoke-virtual {v1}, Landroidx/work/b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, LZ0/u;->g:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, LZ0/u;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, LZ0/u;->i:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LZ0/u;->j:LQ0/b;

    invoke-virtual {v1}, LQ0/b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LZ0/u;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LZ0/u;->l:LQ0/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, LZ0/u;->m:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, LZ0/u;->n:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, LZ0/u;->o:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, LZ0/u;->p:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, LZ0/u;->q:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LZ0/u;->r:LQ0/m;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LZ0/u;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LZ0/u;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i(J)V
    .locals 5

    const-wide/32 v0, 0xdbba0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object v2

    sget-object v3, LZ0/u;->v:Ljava/lang/String;

    const-string v4, "Interval duration lesser than minimum allowed value; Changed to 900000"

    invoke-virtual {v2, v3, v4}, LQ0/i;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, p2, v0, v1}, Lz3/e;->b(JJ)J

    move-result-wide v2

    invoke-static {p1, p2, v0, v1}, Lz3/e;->b(JJ)J

    move-result-wide p1

    invoke-virtual {p0, v2, v3, p1, p2}, LZ0/u;->j(JJ)V

    return-void
.end method

.method public final j(JJ)V
    .locals 8

    const-wide/32 v0, 0xdbba0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object v2

    sget-object v3, LZ0/u;->v:Ljava/lang/String;

    const-string v4, "Interval duration lesser than minimum allowed value; Changed to 900000"

    invoke-virtual {v2, v3, v4}, LQ0/i;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, p2, v0, v1}, Lz3/e;->b(JJ)J

    move-result-wide v0

    iput-wide v0, p0, LZ0/u;->h:J

    const-wide/32 v0, 0x493e0

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object v0

    sget-object v1, LZ0/u;->v:Ljava/lang/String;

    const-string v2, "Flex duration lesser than minimum allowed value; Changed to 300000"

    invoke-virtual {v0, v1, v2}, LQ0/i;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-wide v0, p0, LZ0/u;->h:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_2

    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object v0

    sget-object v1, LZ0/u;->v:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flex duration greater than interval duration; Changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, LQ0/i;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-wide/32 v4, 0x493e0

    iget-wide v6, p0, LZ0/u;->h:J

    move-wide v2, p3

    invoke-static/range {v2 .. v7}, Lz3/e;->e(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, LZ0/u;->i:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{WorkSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LZ0/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
