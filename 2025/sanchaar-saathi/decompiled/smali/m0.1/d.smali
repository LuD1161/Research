.class public final Lm0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/lifecycle/H;

.field public final b:Landroidx/lifecycle/G$c;

.field public final c:Lm0/a;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/H;Landroidx/lifecycle/G$c;Lm0/a;)V
    .locals 1

    const-string v0, "store"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/d;->a:Landroidx/lifecycle/H;

    iput-object p2, p0, Lm0/d;->b:Landroidx/lifecycle/G$c;

    iput-object p3, p0, Lm0/d;->c:Lm0/a;

    return-void
.end method

.method public static synthetic b(Lm0/d;LA3/b;Ljava/lang/String;ILjava/lang/Object;)Landroidx/lifecycle/F;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Ln0/c;->a:Ln0/c;

    invoke-virtual {p2, p1}, Ln0/c;->b(LA3/b;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lm0/d;->a(LA3/b;Ljava/lang/String;)Landroidx/lifecycle/F;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(LA3/b;Ljava/lang/String;)Landroidx/lifecycle/F;
    .locals 2

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lm0/d;->a:Landroidx/lifecycle/H;

    invoke-virtual {v0, p2}, Landroidx/lifecycle/H;->b(Ljava/lang/String;)Landroidx/lifecycle/F;

    move-result-object v0

    invoke-interface {p1, v0}, LA3/b;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "null cannot be cast to non-null type T of androidx.lifecycle.viewmodel.ViewModelProviderImpl.getViewModel"

    invoke-static {v0, p1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Lm0/b;

    iget-object v1, p0, Lm0/d;->c:Lm0/a;

    invoke-direct {v0, v1}, Lm0/b;-><init>(Lm0/a;)V

    sget-object v1, Ln0/c$a;->a:Ln0/c$a;

    invoke-virtual {v0, v1, p2}, Lm0/b;->b(Lm0/a$b;Ljava/lang/Object;)V

    iget-object v1, p0, Lm0/d;->b:Landroidx/lifecycle/G$c;

    invoke-static {v1, p1, v0}, Lm0/e;->a(Landroidx/lifecycle/G$c;LA3/b;Lm0/a;)Landroidx/lifecycle/F;

    move-result-object p1

    iget-object v0, p0, Lm0/d;->a:Landroidx/lifecycle/H;

    invoke-virtual {v0, p2, p1}, Landroidx/lifecycle/H;->c(Ljava/lang/String;Landroidx/lifecycle/F;)V

    return-object p1
.end method
