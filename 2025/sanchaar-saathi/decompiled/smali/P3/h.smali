.class public final LP3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LO3/r;

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:I

.field public final h:Ljava/lang/Long;

.field public final i:J

.field public final j:Ljava/util/List;


# direct methods
.method public constructor <init>(LO3/r;ZLjava/lang/String;JJJILjava/lang/Long;J)V
    .locals 1

    const-string v0, "canonicalPath"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comment"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LP3/h;->a:LO3/r;

    .line 3
    iput-boolean p2, p0, LP3/h;->b:Z

    .line 4
    iput-object p3, p0, LP3/h;->c:Ljava/lang/String;

    .line 5
    iput-wide p4, p0, LP3/h;->d:J

    .line 6
    iput-wide p6, p0, LP3/h;->e:J

    .line 7
    iput-wide p8, p0, LP3/h;->f:J

    .line 8
    iput p10, p0, LP3/h;->g:I

    .line 9
    iput-object p11, p0, LP3/h;->h:Ljava/lang/Long;

    .line 10
    iput-wide p12, p0, LP3/h;->i:J

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LP3/h;->j:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(LO3/r;ZLjava/lang/String;JJJILjava/lang/Long;JILv3/g;)V
    .locals 13

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    .line 12
    const-string v2, ""

    goto :goto_1

    :cond_1
    move-object/from16 v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    const-wide/16 v4, -0x1

    if-eqz v3, :cond_2

    move-wide v6, v4

    goto :goto_2

    :cond_2
    move-wide/from16 v6, p4

    :goto_2
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_3

    move-wide v8, v4

    goto :goto_3

    :cond_3
    move-wide/from16 v8, p6

    :goto_3
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_4

    move-wide v10, v4

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p8

    :goto_4
    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_5

    const/4 v3, -0x1

    goto :goto_5

    :cond_5
    move/from16 v3, p10

    :goto_5
    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_6

    const/4 v12, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v12, p11

    :goto_6
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    move-wide/from16 v4, p12

    :goto_7
    move-object p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v1

    move-object/from16 p5, v2

    move-wide/from16 p6, v6

    move-wide/from16 p8, v8

    move-wide/from16 p10, v10

    move/from16 p12, v3

    move-object/from16 p13, v12

    move-wide/from16 p14, v4

    .line 13
    invoke-direct/range {p2 .. p15}, LP3/h;-><init>(LO3/r;ZLjava/lang/String;JJJILjava/lang/Long;J)V

    return-void
.end method


# virtual methods
.method public final a()LO3/r;
    .locals 1

    iget-object v0, p0, LP3/h;->a:LO3/r;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, LP3/h;->j:Ljava/util/List;

    return-object v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, LP3/h;->e:J

    return-wide v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, LP3/h;->g:I

    return v0
.end method

.method public final e()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, LP3/h;->h:Ljava/lang/Long;

    return-object v0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, LP3/h;->i:J

    return-wide v0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, LP3/h;->f:J

    return-wide v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, LP3/h;->b:Z

    return v0
.end method
