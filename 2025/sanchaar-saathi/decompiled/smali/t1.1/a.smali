.class public final Lt1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt1/a$a;,
        Lt1/a$d;,
        Lt1/a$b;,
        Lt1/a$c;
    }
.end annotation


# static fields
.field public static final n:Lv1/a$g;

.field public static final o:Lv1/a$a;

.field public static final p:Lv1/a;

.field public static final q:[LO1/a;

.field public static final r:[Ljava/lang/String;

.field public static final s:[[B


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public final h:Z

.field public i:Lcom/google/android/gms/internal/clearcut/E1;

.field public final j:Lt1/c;

.field public final k:LD1/c;

.field public l:Lt1/a$d;

.field public final m:Lt1/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lv1/a$g;

    invoke-direct {v0}, Lv1/a$g;-><init>()V

    sput-object v0, Lt1/a;->n:Lv1/a$g;

    new-instance v1, Lt1/b;

    invoke-direct {v1}, Lt1/b;-><init>()V

    sput-object v1, Lt1/a;->o:Lv1/a$a;

    new-instance v2, Lv1/a;

    const-string v3, "ClearcutLogger.API"

    invoke-direct {v2, v3, v1, v0}, Lv1/a;-><init>(Ljava/lang/String;Lv1/a$a;Lv1/a$g;)V

    sput-object v2, Lt1/a;->p:Lv1/a;

    const/4 v0, 0x0

    new-array v1, v0, [LO1/a;

    sput-object v1, Lt1/a;->q:[LO1/a;

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lt1/a;->r:[Ljava/lang/String;

    new-array v0, v0, [[B

    sput-object v0, Lt1/a;->s:[[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLt1/c;LD1/c;Lt1/a$d;Lt1/a$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    iput p2, p0, Lt1/a;->e:I

    sget-object p5, Lcom/google/android/gms/internal/clearcut/E1;->f:Lcom/google/android/gms/internal/clearcut/E1;

    iput-object p5, p0, Lt1/a;->i:Lcom/google/android/gms/internal/clearcut/E1;

    iput-object p1, p0, Lt1/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p9

    iput-object p9, p0, Lt1/a;->b:Ljava/lang/String;

    invoke-static {p1}, Lt1/a;->b(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lt1/a;->c:I

    iput p2, p0, Lt1/a;->e:I

    iput-object p3, p0, Lt1/a;->d:Ljava/lang/String;

    iput-object p4, p0, Lt1/a;->f:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lt1/a;->g:Ljava/lang/String;

    iput-boolean p6, p0, Lt1/a;->h:Z

    iput-object p7, p0, Lt1/a;->j:Lt1/c;

    iput-object p8, p0, Lt1/a;->k:LD1/c;

    new-instance p1, Lt1/a$d;

    invoke-direct {p1}, Lt1/a$d;-><init>()V

    iput-object p1, p0, Lt1/a;->l:Lt1/a$d;

    iput-object p5, p0, Lt1/a;->i:Lcom/google/android/gms/internal/clearcut/E1;

    iput-object p10, p0, Lt1/a;->m:Lt1/a$b;

    if-eqz p6, :cond_1

    if-nez p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "can\'t be anonymous with an upload account"

    invoke-static {p1, p2}, Lz1/o;->b(ZLjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/L0;->p(Landroid/content/Context;)Lt1/c;

    move-result-object v7

    invoke-static {}, LD1/e;->c()LD1/c;

    move-result-object v8

    new-instance v10, Lcom/google/android/gms/internal/clearcut/V1;

    invoke-direct {v10, p1}, Lcom/google/android/gms/internal/clearcut/V1;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v10}, Lt1/a;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLt1/c;LD1/c;Lt1/a$d;Lt1/a$b;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "ClearcutLogger"

    const-string v2, "This can\'t happen."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public static synthetic c(Lt1/a;)I
    .locals 0

    iget p0, p0, Lt1/a;->e:I

    return p0
.end method

.method public static d(Ljava/util/ArrayList;)[I
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    aput v4, v0, v3

    move v3, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static synthetic e(Lt1/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lt1/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f(Ljava/util/ArrayList;)[I
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lt1/a;->d(Ljava/util/ArrayList;)[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lt1/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lt1/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic h(Lt1/a;)Lcom/google/android/gms/internal/clearcut/E1;
    .locals 0

    iget-object p0, p0, Lt1/a;->i:Lcom/google/android/gms/internal/clearcut/E1;

    return-object p0
.end method

.method public static synthetic i(Lt1/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lt1/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic j(Lt1/a;)LD1/c;
    .locals 0

    iget-object p0, p0, Lt1/a;->k:LD1/c;

    return-object p0
.end method

.method public static synthetic k(Lt1/a;)Lt1/a$d;
    .locals 0

    iget-object p0, p0, Lt1/a;->l:Lt1/a$d;

    return-object p0
.end method

.method public static synthetic l(Lt1/a;)Z
    .locals 0

    iget-boolean p0, p0, Lt1/a;->h:Z

    return p0
.end method

.method public static synthetic m(Lt1/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lt1/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic n(Lt1/a;)I
    .locals 0

    iget p0, p0, Lt1/a;->c:I

    return p0
.end method

.method public static synthetic o(Lt1/a;)Lt1/a$b;
    .locals 0

    iget-object p0, p0, Lt1/a;->m:Lt1/a$b;

    return-object p0
.end method

.method public static synthetic p(Lt1/a;)Lt1/c;
    .locals 0

    iget-object p0, p0, Lt1/a;->j:Lt1/c;

    return-object p0
.end method


# virtual methods
.method public final a([B)Lt1/a$a;
    .locals 2

    new-instance v0, Lt1/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lt1/a$a;-><init>(Lt1/a;[BLt1/b;)V

    return-object v0
.end method
