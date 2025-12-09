.class public final Lcom/google/android/gms/internal/clearcut/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/net/Uri;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 7

    .line 1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string v3, ""

    const-string v4, ""

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/o;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/o;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/clearcut/o;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/clearcut/o;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/clearcut/o;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/clearcut/o;->e:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/clearcut/o;->f:Z

    return-void
.end method

.method public static synthetic c(Lcom/google/android/gms/internal/clearcut/o;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/o;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/google/android/gms/internal/clearcut/o;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/o;->b:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic g(Lcom/google/android/gms/internal/clearcut/o;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/o;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic i(Lcom/google/android/gms/internal/clearcut/o;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/o;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic j(Lcom/google/android/gms/internal/clearcut/o;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/clearcut/o;->f:Z

    return p0
.end method

.method public static synthetic k(Lcom/google/android/gms/internal/clearcut/o;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/clearcut/o;->e:Z

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/n;)Lcom/google/android/gms/internal/clearcut/e;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/e;->i(Lcom/google/android/gms/internal/clearcut/o;Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/n;)Lcom/google/android/gms/internal/clearcut/e;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/clearcut/e;
    .locals 0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/e;->j(Lcom/google/android/gms/internal/clearcut/o;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/clearcut/e;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/String;Z)Lcom/google/android/gms/internal/clearcut/e;
    .locals 0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/e;->k(Lcom/google/android/gms/internal/clearcut/o;Ljava/lang/String;Z)Lcom/google/android/gms/internal/clearcut/e;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/String;)Lcom/google/android/gms/internal/clearcut/o;
    .locals 8

    iget-boolean v5, p0, Lcom/google/android/gms/internal/clearcut/o;->e:Z

    if-nez v5, :cond_0

    new-instance v7, Lcom/google/android/gms/internal/clearcut/o;

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/o;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/o;->b:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/o;->d:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/clearcut/o;->f:Z

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/o;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v7

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set GServices prefix and skip GServices"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Ljava/lang/String;)Lcom/google/android/gms/internal/clearcut/o;
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/clearcut/o;

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/o;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/o;->b:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/o;->c:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/clearcut/o;->e:Z

    iget-boolean v6, p0, Lcom/google/android/gms/internal/clearcut/o;->f:Z

    move-object v0, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/o;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v7
.end method
