.class public final Landroidx/work/impl/WorkDatabase$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/WorkDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lv3/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/work/impl/WorkDatabase$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ly0/h$b;)Ly0/h;
    .locals 0

    invoke-static {p0, p1}, Landroidx/work/impl/WorkDatabase$a;->c(Landroid/content/Context;Ly0/h$b;)Ly0/h;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Landroid/content/Context;Ly0/h$b;)Ly0/h;
    .locals 1

    const-string v0, "$context"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly0/h$b;->f:Ly0/h$b$b;

    invoke-virtual {v0, p0}, Ly0/h$b$b;->a(Landroid/content/Context;)Ly0/h$b$a;

    move-result-object p0

    iget-object v0, p1, Ly0/h$b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ly0/h$b$a;->d(Ljava/lang/String;)Ly0/h$b$a;

    move-result-object v0

    iget-object p1, p1, Ly0/h$b;->c:Ly0/h$a;

    invoke-virtual {v0, p1}, Ly0/h$b$a;->c(Ly0/h$a;)Ly0/h$b$a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ly0/h$b$a;->e(Z)Ly0/h$b$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Ly0/h$b$a;->a(Z)Ly0/h$b$a;

    new-instance p1, Lz0/f;

    invoke-direct {p1}, Lz0/f;-><init>()V

    invoke-virtual {p0}, Ly0/h$b$a;->b()Ly0/h$b;

    move-result-object p0

    invoke-virtual {p1, p0}, Lz0/f;->create(Ly0/h$b;)Ly0/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "context"

    invoke-static {p1, v2}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "queryExecutor"

    invoke-static {p2, v2}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Landroidx/work/impl/WorkDatabase;

    if-eqz p3, :cond_0

    invoke-static {p1, v2}, Lu0/t;->c(Landroid/content/Context;Ljava/lang/Class;)Lu0/u$a;

    move-result-object p3

    invoke-virtual {p3}, Lu0/u$a;->c()Lu0/u$a;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, "androidx.work.workdb"

    invoke-static {p1, v2, p3}, Lu0/t;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Lu0/u$a;

    move-result-object p3

    new-instance v2, LR0/y;

    invoke-direct {v2, p1}, LR0/y;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, v2}, Lu0/u$a;->f(Ly0/h$c;)Lu0/u$a;

    move-result-object p3

    :goto_0
    invoke-virtual {p3, p2}, Lu0/u$a;->g(Ljava/util/concurrent/Executor;)Lu0/u$a;

    move-result-object p2

    sget-object p3, LR0/c;->a:LR0/c;

    invoke-virtual {p2, p3}, Lu0/u$a;->a(Lu0/u$b;)Lu0/u$a;

    move-result-object p2

    new-array p3, v1, [Lv0/b;

    sget-object v2, LR0/i;->c:LR0/i;

    aput-object v2, p3, v0

    invoke-virtual {p2, p3}, Lu0/u$a;->b([Lv0/b;)Lu0/u$a;

    move-result-object p2

    new-instance p3, LR0/s;

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-direct {p3, p1, v2, v3}, LR0/s;-><init>(Landroid/content/Context;II)V

    new-array v2, v1, [Lv0/b;

    aput-object p3, v2, v0

    invoke-virtual {p2, v2}, Lu0/u$a;->b([Lv0/b;)Lu0/u$a;

    move-result-object p2

    new-array p3, v1, [Lv0/b;

    sget-object v2, LR0/j;->c:LR0/j;

    aput-object v2, p3, v0

    invoke-virtual {p2, p3}, Lu0/u$a;->b([Lv0/b;)Lu0/u$a;

    move-result-object p2

    new-array p3, v1, [Lv0/b;

    sget-object v2, LR0/k;->c:LR0/k;

    aput-object v2, p3, v0

    invoke-virtual {p2, p3}, Lu0/u$a;->b([Lv0/b;)Lu0/u$a;

    move-result-object p2

    new-instance p3, LR0/s;

    const/4 v2, 0x5

    const/4 v3, 0x6

    invoke-direct {p3, p1, v2, v3}, LR0/s;-><init>(Landroid/content/Context;II)V

    new-array v2, v1, [Lv0/b;

    aput-object p3, v2, v0

    invoke-virtual {p2, v2}, Lu0/u$a;->b([Lv0/b;)Lu0/u$a;

    move-result-object p2

    new-array p3, v1, [Lv0/b;

    sget-object v2, LR0/l;->c:LR0/l;

    aput-object v2, p3, v0

    invoke-virtual {p2, p3}, Lu0/u$a;->b([Lv0/b;)Lu0/u$a;

    move-result-object p2

    new-array p3, v1, [Lv0/b;

    sget-object v2, LR0/m;->c:LR0/m;

    aput-object v2, p3, v0

    invoke-virtual {p2, p3}, Lu0/u$a;->b([Lv0/b;)Lu0/u$a;

    move-result-object p2

    new-array p3, v1, [Lv0/b;

    sget-object v2, LR0/n;->c:LR0/n;

    aput-object v2, p3, v0

    invoke-virtual {p2, p3}, Lu0/u$a;->b([Lv0/b;)Lu0/u$a;

    move-result-object p2

    new-instance p3, LR0/F;

    invoke-direct {p3, p1}, LR0/F;-><init>(Landroid/content/Context;)V

    new-array v2, v1, [Lv0/b;

    aput-object p3, v2, v0

    invoke-virtual {p2, v2}, Lu0/u$a;->b([Lv0/b;)Lu0/u$a;

    move-result-object p2

    new-instance p3, LR0/s;

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {p3, p1, v2, v3}, LR0/s;-><init>(Landroid/content/Context;II)V

    new-array p1, v1, [Lv0/b;

    aput-object p3, p1, v0

    invoke-virtual {p2, p1}, Lu0/u$a;->b([Lv0/b;)Lu0/u$a;

    move-result-object p1

    new-array p2, v1, [Lv0/b;

    sget-object p3, LR0/f;->c:LR0/f;

    aput-object p3, p2, v0

    invoke-virtual {p1, p2}, Lu0/u$a;->b([Lv0/b;)Lu0/u$a;

    move-result-object p1

    new-array p2, v1, [Lv0/b;

    sget-object p3, LR0/g;->c:LR0/g;

    aput-object p3, p2, v0

    invoke-virtual {p1, p2}, Lu0/u$a;->b([Lv0/b;)Lu0/u$a;

    move-result-object p1

    new-array p2, v1, [Lv0/b;

    sget-object p3, LR0/h;->c:LR0/h;

    aput-object p3, p2, v0

    invoke-virtual {p1, p2}, Lu0/u$a;->b([Lv0/b;)Lu0/u$a;

    move-result-object p1

    invoke-virtual {p1}, Lu0/u$a;->e()Lu0/u$a;

    move-result-object p1

    invoke-virtual {p1}, Lu0/u$a;->d()Lu0/u;

    move-result-object p1

    check-cast p1, Landroidx/work/impl/WorkDatabase;

    return-object p1
.end method
