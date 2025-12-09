.class public Lp2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/Integer;

.field public final f:I

.field public final g:J

.field public final h:J

.field public final i:J

.field public final j:J

.field public final k:Landroid/app/PendingIntent;

.field public final l:Landroid/app/PendingIntent;

.field public final m:Landroid/app/PendingIntent;

.field public final n:Landroid/app/PendingIntent;

.field public final o:Ljava/util/Map;

.field public p:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/Integer;IJJJJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/util/Map;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lp2/a;->p:Z

    move-object v1, p1

    iput-object v1, v0, Lp2/a;->a:Ljava/lang/String;

    move v1, p2

    iput v1, v0, Lp2/a;->b:I

    move v1, p3

    iput v1, v0, Lp2/a;->c:I

    move v1, p4

    iput v1, v0, Lp2/a;->d:I

    move-object v1, p5

    iput-object v1, v0, Lp2/a;->e:Ljava/lang/Integer;

    move v1, p6

    iput v1, v0, Lp2/a;->f:I

    move-wide v1, p7

    iput-wide v1, v0, Lp2/a;->g:J

    move-wide v1, p9

    iput-wide v1, v0, Lp2/a;->h:J

    move-wide v1, p11

    iput-wide v1, v0, Lp2/a;->i:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lp2/a;->j:J

    move-object/from16 v1, p15

    iput-object v1, v0, Lp2/a;->k:Landroid/app/PendingIntent;

    move-object/from16 v1, p16

    iput-object v1, v0, Lp2/a;->l:Landroid/app/PendingIntent;

    move-object/from16 v1, p17

    iput-object v1, v0, Lp2/a;->m:Landroid/app/PendingIntent;

    move-object/from16 v1, p18

    iput-object v1, v0, Lp2/a;->n:Landroid/app/PendingIntent;

    move-object/from16 v1, p19

    iput-object v1, v0, Lp2/a;->o:Ljava/util/Map;

    return-void
.end method

.method public static k(Ljava/lang/String;IIILjava/lang/Integer;IJJJJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/util/Map;)Lp2/a;
    .locals 21

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    new-instance v20, Lp2/a;

    move-object/from16 v0, v20

    invoke-direct/range {v0 .. v19}, Lp2/a;-><init>(Ljava/lang/String;IIILjava/lang/Integer;IJJJJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/util/Map;)V

    return-object v20
.end method

.method public static n(Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lp2/a;->b:I

    return v0
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lp2/a;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public c(Lp2/d;)Ljava/util/Set;
    .locals 1

    invoke-virtual {p1}, Lp2/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lp2/d;->b()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lp2/a;->o:Ljava/util/Map;

    const-string v0, "nonblocking.destructive.intent"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Lp2/a;->n(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lp2/a;->o:Ljava/util/Map;

    const-string v0, "blocking.destructive.intent"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Lp2/a;->n(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lp2/d;->b()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lp2/a;->o:Ljava/util/Map;

    const-string v0, "nonblocking.intent"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Lp2/a;->n(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lp2/a;->o:Ljava/util/Map;

    const-string v0, "blocking.intent"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Lp2/a;->n(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lp2/a;->d:I

    return v0
.end method

.method public e(I)Z
    .locals 0

    invoke-static {p1}, Lp2/d;->c(I)Lp2/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lp2/a;->j(Lp2/d;)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f(Lp2/d;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lp2/a;->j(Lp2/d;)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lp2/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lp2/a;->c:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lp2/a;->f:I

    return v0
.end method

.method public final j(Lp2/d;)Landroid/app/PendingIntent;
    .locals 3

    invoke-virtual {p1}, Lp2/d;->b()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lp2/a;->l:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lp2/a;->o(Lp2/d;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lp2/a;->n:Landroid/app/PendingIntent;

    return-object p1

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {p1}, Lp2/d;->b()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lp2/a;->k:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p0, p1}, Lp2/a;->o(Lp2/d;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lp2/a;->m:Landroid/app/PendingIntent;

    return-object p1

    :cond_4
    return-object v1
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp2/a;->p:Z

    return-void
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lp2/a;->p:Z

    return v0
.end method

.method public final o(Lp2/d;)Z
    .locals 4

    invoke-virtual {p1}, Lp2/d;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lp2/a;->i:J

    iget-wide v2, p0, Lp2/a;->j:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
