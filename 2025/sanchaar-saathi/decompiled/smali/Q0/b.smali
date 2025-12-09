.class public final LQ0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQ0/b$a;,
        LQ0/b$c;,
        LQ0/b$b;
    }
.end annotation


# static fields
.field public static final i:LQ0/b$b;

.field public static final j:LQ0/b;


# instance fields
.field public final a:LQ0/j;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:J

.field public final g:J

.field public final h:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, LQ0/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LQ0/b$b;-><init>(Lv3/g;)V

    sput-object v0, LQ0/b;->i:LQ0/b$b;

    new-instance v0, LQ0/b;

    const/16 v13, 0xff

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, LQ0/b;-><init>(LQ0/j;ZZZZJJLjava/util/Set;ILv3/g;)V

    sput-object v0, LQ0/b;->j:LQ0/b;

    return-void
.end method

.method public constructor <init>(LQ0/b;)V
    .locals 12

    const-string v0, "other"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-boolean v3, p1, LQ0/b;->b:Z

    .line 14
    iget-boolean v4, p1, LQ0/b;->c:Z

    .line 15
    iget-object v2, p1, LQ0/b;->a:LQ0/j;

    .line 16
    iget-boolean v5, p1, LQ0/b;->d:Z

    .line 17
    iget-boolean v6, p1, LQ0/b;->e:Z

    .line 18
    iget-object v11, p1, LQ0/b;->h:Ljava/util/Set;

    .line 19
    iget-wide v7, p1, LQ0/b;->f:J

    .line 20
    iget-wide v9, p1, LQ0/b;->g:J

    move-object v1, p0

    .line 21
    invoke-direct/range {v1 .. v11}, LQ0/b;-><init>(LQ0/j;ZZZZJJLjava/util/Set;)V

    return-void
.end method

.method public constructor <init>(LQ0/j;ZZZZJJLjava/util/Set;)V
    .locals 1

    const-string v0, "requiredNetworkType"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentUriTriggers"

    invoke-static {p10, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LQ0/b;->a:LQ0/j;

    .line 3
    iput-boolean p2, p0, LQ0/b;->b:Z

    .line 4
    iput-boolean p3, p0, LQ0/b;->c:Z

    .line 5
    iput-boolean p4, p0, LQ0/b;->d:Z

    .line 6
    iput-boolean p5, p0, LQ0/b;->e:Z

    .line 7
    iput-wide p6, p0, LQ0/b;->f:J

    .line 8
    iput-wide p8, p0, LQ0/b;->g:J

    .line 9
    iput-object p10, p0, LQ0/b;->h:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(LQ0/j;ZZZZJJLjava/util/Set;ILv3/g;)V
    .locals 11

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 10
    sget-object v1, LQ0/j;->e:LQ0/j;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v3, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    const-wide/16 v7, -0x1

    if-eqz v6, :cond_5

    move-wide v9, v7

    goto :goto_5

    :cond_5
    move-wide/from16 v9, p6

    :goto_5
    and-int/lit8 v6, v0, 0x40

    if-eqz v6, :cond_6

    goto :goto_6

    :cond_6
    move-wide/from16 v7, p8

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 11
    invoke-static {}, Li3/G;->d()Ljava/util/Set;

    move-result-object v0

    goto :goto_7

    :cond_7
    move-object/from16 v0, p10

    :goto_7
    move-object p1, p0

    move-object p2, v1

    move p3, v2

    move p4, v4

    move/from16 p5, v5

    move/from16 p6, v3

    move-wide/from16 p7, v9

    move-wide/from16 p9, v7

    move-object/from16 p11, v0

    .line 12
    invoke-direct/range {p1 .. p11}, LQ0/b;-><init>(LQ0/j;ZZZZJJLjava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, LQ0/b;->g:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, LQ0/b;->f:J

    return-wide v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, LQ0/b;->h:Ljava/util/Set;

    return-object v0
.end method

.method public final d()LQ0/j;
    .locals 1

    iget-object v0, p0, LQ0/b;->a:LQ0/j;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, LQ0/b;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, LQ0/b;

    invoke-static {v2, v1}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, LQ0/b;

    iget-boolean v1, p0, LQ0/b;->b:Z

    iget-boolean v2, p1, LQ0/b;->b:Z

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-boolean v1, p0, LQ0/b;->c:Z

    iget-boolean v2, p1, LQ0/b;->c:Z

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    iget-boolean v1, p0, LQ0/b;->d:Z

    iget-boolean v2, p1, LQ0/b;->d:Z

    if-eq v1, v2, :cond_4

    return v0

    :cond_4
    iget-boolean v1, p0, LQ0/b;->e:Z

    iget-boolean v2, p1, LQ0/b;->e:Z

    if-eq v1, v2, :cond_5

    return v0

    :cond_5
    iget-wide v1, p0, LQ0/b;->f:J

    iget-wide v3, p1, LQ0/b;->f:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    return v0

    :cond_6
    iget-wide v1, p0, LQ0/b;->g:J

    iget-wide v3, p1, LQ0/b;->g:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    return v0

    :cond_7
    iget-object v1, p0, LQ0/b;->a:LQ0/j;

    iget-object v2, p1, LQ0/b;->a:LQ0/j;

    if-eq v1, v2, :cond_8

    goto :goto_0

    :cond_8
    iget-object v0, p0, LQ0/b;->h:Ljava/util/Set;

    iget-object p1, p1, LQ0/b;->h:Ljava/util/Set;

    invoke-static {v0, p1}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :cond_9
    :goto_0
    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, LQ0/b;->d:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, LQ0/b;->b:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, LQ0/b;->c:Z

    return v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, LQ0/b;->a:LQ0/j;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, LQ0/b;->b:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, LQ0/b;->c:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, LQ0/b;->d:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, LQ0/b;->e:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, LQ0/b;->f:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, LQ0/b;->g:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LQ0/b;->h:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, LQ0/b;->e:Z

    return v0
.end method
