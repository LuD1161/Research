.class public final Lu0/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly0/j;
.implements Ly0/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu0/x$a;
    }
.end annotation


# static fields
.field public static final m:Lu0/x$a;

.field public static final n:Ljava/util/TreeMap;


# instance fields
.field public final e:I

.field public volatile f:Ljava/lang/String;

.field public final g:[J

.field public final h:[D

.field public final i:[Ljava/lang/String;

.field public final j:[[B

.field public final k:[I

.field public l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu0/x$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu0/x$a;-><init>(Lv3/g;)V

    sput-object v0, Lu0/x;->m:Lu0/x$a;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lu0/x;->n:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lu0/x;->e:I

    add-int/lit8 p1, p1, 0x1

    .line 4
    new-array v0, p1, [I

    iput-object v0, p0, Lu0/x;->k:[I

    .line 5
    new-array v0, p1, [J

    iput-object v0, p0, Lu0/x;->g:[J

    .line 6
    new-array v0, p1, [D

    iput-object v0, p0, Lu0/x;->h:[D

    .line 7
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lu0/x;->i:[Ljava/lang/String;

    .line 8
    new-array p1, p1, [[B

    iput-object p1, p0, Lu0/x;->j:[[B

    return-void
.end method

.method public synthetic constructor <init>(ILv3/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lu0/x;-><init>(I)V

    return-void
.end method

.method public static final e(Ljava/lang/String;I)Lu0/x;
    .locals 1

    sget-object v0, Lu0/x;->m:Lu0/x$a;

    invoke-virtual {v0, p0, p1}, Lu0/x$a;->a(Ljava/lang/String;I)Lu0/x;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lu0/x;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindBlob(I[B)V
    .locals 2

    const-string v0, "value"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu0/x;->k:[I

    const/4 v1, 0x5

    aput v1, v0, p1

    iget-object v0, p0, Lu0/x;->j:[[B

    aput-object p2, v0, p1

    return-void
.end method

.method public bindDouble(ID)V
    .locals 2

    iget-object v0, p0, Lu0/x;->k:[I

    const/4 v1, 0x3

    aput v1, v0, p1

    iget-object v0, p0, Lu0/x;->h:[D

    aput-wide p2, v0, p1

    return-void
.end method

.method public bindLong(IJ)V
    .locals 2

    iget-object v0, p0, Lu0/x;->k:[I

    const/4 v1, 0x2

    aput v1, v0, p1

    iget-object v0, p0, Lu0/x;->g:[J

    aput-wide p2, v0, p1

    return-void
.end method

.method public bindNull(I)V
    .locals 2

    iget-object v0, p0, Lu0/x;->k:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu0/x;->k:[I

    const/4 v1, 0x4

    aput v1, v0, p1

    iget-object v0, p0, Lu0/x;->i:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lu0/x;->l:I

    return v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public d(Ly0/i;)V
    .locals 6

    const-string v0, "statement"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lu0/x;->c()I

    move-result v0

    const/4 v1, 0x1

    if-gt v1, v0, :cond_7

    move v2, v1

    :goto_0
    iget-object v3, p0, Lu0/x;->k:[I

    aget v3, v3, v2

    if-eq v3, v1, :cond_6

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    const/4 v4, 0x4

    const-string v5, "Required value was null."

    if-eq v3, v4, :cond_2

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lu0/x;->j:[[B

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    invoke-interface {p1, v2, v3}, Ly0/i;->bindBlob(I[B)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v3, p0, Lu0/x;->i:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_3

    invoke-interface {p1, v2, v3}, Ly0/i;->bindString(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object v3, p0, Lu0/x;->h:[D

    aget-wide v3, v3, v2

    invoke-interface {p1, v2, v3, v4}, Ly0/i;->bindDouble(ID)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lu0/x;->g:[J

    aget-wide v3, v3, v2

    invoke-interface {p1, v2, v3, v4}, Ly0/i;->bindLong(IJ)V

    goto :goto_1

    :cond_6
    invoke-interface {p1, v2}, Ly0/i;->bindNull(I)V

    :goto_1
    if-eq v2, v0, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final f(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lu0/x;->f:Ljava/lang/String;

    iput p2, p0, Lu0/x;->l:I

    return-void
.end method

.method public final g()V
    .locals 2

    sget-object v0, Lu0/x;->n:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lu0/x;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lu0/x;->m:Lu0/x$a;

    invoke-virtual {v1}, Lu0/x$a;->b()V

    sget-object v1, Lh3/n;->a:Lh3/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
