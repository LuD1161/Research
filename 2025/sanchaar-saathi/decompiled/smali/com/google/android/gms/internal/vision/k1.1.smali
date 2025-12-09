.class public final Lcom/google/android/gms/internal/vision/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/M1;


# static fields
.field public static final b:Lcom/google/android/gms/internal/vision/u1;


# instance fields
.field public final a:Lcom/google/android/gms/internal/vision/u1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/vision/j1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/j1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/k1;->b:Lcom/google/android/gms/internal/vision/u1;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/m1;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/vision/O0;->c()Lcom/google/android/gms/internal/vision/O0;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/vision/k1;->b()Lcom/google/android/gms/internal/vision/u1;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/vision/u1;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/m1;-><init>([Lcom/google/android/gms/internal/vision/u1;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/k1;-><init>(Lcom/google/android/gms/internal/vision/u1;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/vision/u1;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/vision/R0;->f(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/u1;

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/k1;->a:Lcom/google/android/gms/internal/vision/u1;

    return-void
.end method

.method public static b()Lcom/google/android/gms/internal/vision/u1;
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/u1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/vision/k1;->b:Lcom/google/android/gms/internal/vision/u1;

    return-object v0
.end method

.method public static c(Lcom/google/android/gms/internal/vision/r1;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/r1;->a()I

    move-result p0

    sget v0, Lcom/google/android/gms/internal/vision/G1;->a:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/K1;
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/L1;->p(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/k1;->a:Lcom/google/android/gms/internal/vision/u1;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/vision/u1;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/r1;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/vision/r1;->d()Z

    move-result v0

    const-class v1, Lcom/google/android/gms/internal/vision/N0;

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/vision/L1;->B()Lcom/google/android/gms/internal/vision/a2;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/vision/D0;->a()Lcom/google/android/gms/internal/vision/C0;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/vision/r1;->b()Lcom/google/android/gms/internal/vision/t1;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/z1;->j(Lcom/google/android/gms/internal/vision/a2;Lcom/google/android/gms/internal/vision/C0;Lcom/google/android/gms/internal/vision/t1;)Lcom/google/android/gms/internal/vision/z1;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/L1;->f()Lcom/google/android/gms/internal/vision/a2;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/vision/D0;->b()Lcom/google/android/gms/internal/vision/C0;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/vision/r1;->b()Lcom/google/android/gms/internal/vision/t1;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/z1;->j(Lcom/google/android/gms/internal/vision/a2;Lcom/google/android/gms/internal/vision/C0;Lcom/google/android/gms/internal/vision/t1;)Lcom/google/android/gms/internal/vision/z1;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/k1;->c(Lcom/google/android/gms/internal/vision/r1;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/vision/B1;->b()Lcom/google/android/gms/internal/vision/A1;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/vision/c1;->c()Lcom/google/android/gms/internal/vision/c1;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/vision/L1;->B()Lcom/google/android/gms/internal/vision/a2;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/vision/D0;->a()Lcom/google/android/gms/internal/vision/C0;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/vision/s1;->b()Lcom/google/android/gms/internal/vision/q1;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/vision/x1;->p(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/r1;Lcom/google/android/gms/internal/vision/A1;Lcom/google/android/gms/internal/vision/c1;Lcom/google/android/gms/internal/vision/a2;Lcom/google/android/gms/internal/vision/C0;Lcom/google/android/gms/internal/vision/q1;)Lcom/google/android/gms/internal/vision/x1;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/B1;->b()Lcom/google/android/gms/internal/vision/A1;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/vision/c1;->c()Lcom/google/android/gms/internal/vision/c1;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/vision/L1;->B()Lcom/google/android/gms/internal/vision/a2;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/vision/s1;->b()Lcom/google/android/gms/internal/vision/q1;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/vision/x1;->p(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/r1;Lcom/google/android/gms/internal/vision/A1;Lcom/google/android/gms/internal/vision/c1;Lcom/google/android/gms/internal/vision/a2;Lcom/google/android/gms/internal/vision/C0;Lcom/google/android/gms/internal/vision/q1;)Lcom/google/android/gms/internal/vision/x1;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/internal/vision/k1;->c(Lcom/google/android/gms/internal/vision/r1;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/vision/B1;->a()Lcom/google/android/gms/internal/vision/A1;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/vision/c1;->a()Lcom/google/android/gms/internal/vision/c1;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/vision/L1;->f()Lcom/google/android/gms/internal/vision/a2;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/vision/D0;->b()Lcom/google/android/gms/internal/vision/C0;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/vision/s1;->a()Lcom/google/android/gms/internal/vision/q1;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/vision/x1;->p(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/r1;Lcom/google/android/gms/internal/vision/A1;Lcom/google/android/gms/internal/vision/c1;Lcom/google/android/gms/internal/vision/a2;Lcom/google/android/gms/internal/vision/C0;Lcom/google/android/gms/internal/vision/q1;)Lcom/google/android/gms/internal/vision/x1;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/vision/B1;->a()Lcom/google/android/gms/internal/vision/A1;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/vision/c1;->a()Lcom/google/android/gms/internal/vision/c1;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/vision/L1;->v()Lcom/google/android/gms/internal/vision/a2;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/vision/s1;->a()Lcom/google/android/gms/internal/vision/q1;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/vision/x1;->p(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/r1;Lcom/google/android/gms/internal/vision/A1;Lcom/google/android/gms/internal/vision/c1;Lcom/google/android/gms/internal/vision/a2;Lcom/google/android/gms/internal/vision/C0;Lcom/google/android/gms/internal/vision/q1;)Lcom/google/android/gms/internal/vision/x1;

    move-result-object p1

    return-object p1
.end method
