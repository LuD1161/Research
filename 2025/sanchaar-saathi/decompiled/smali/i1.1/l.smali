.class public final Li1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/j$c;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Li1/a;

.field public final e:Li1/p;

.field public final f:Li1/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Li1/a;Li1/p;Li1/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/l;->c:Landroid/content/Context;

    iput-object p2, p0, Li1/l;->d:Li1/a;

    iput-object p3, p0, Li1/l;->e:Li1/p;

    iput-object p4, p0, Li1/l;->f:Li1/w;

    return-void
.end method

.method public static synthetic a(LY2/j$d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Li1/l;->e(LY2/j$d;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(LY2/j$d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Li1/l;->f(LY2/j$d;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(LY2/j$d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Li1/l;->g(LY2/j$d;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(LY2/j$d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Li1/l;->h(LY2/j$d;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(LY2/j$d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(LY2/j$d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(LY2/j$d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic h(LY2/j$d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onMethodCall(LY2/i;LY2/j$d;)V
    .locals 4

    iget-object v0, p1, LY2/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "requestPermissions"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "openAppSettings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "checkPermissionStatus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "shouldShowRequestPermissionRationale"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v2, "checkServiceStatus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    invoke-interface {p2}, LY2/j$d;->c()V

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p1}, LY2/i;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Li1/l;->e:Li1/p;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Li1/f;

    invoke-direct {v1, p2}, Li1/f;-><init>(LY2/j$d;)V

    new-instance v2, Li1/g;

    invoke-direct {v2, p2}, Li1/g;-><init>(LY2/j$d;)V

    invoke-virtual {v0, p1, v1, v2}, Li1/p;->g(Ljava/util/List;Li1/p$b;Li1/b;)V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Li1/l;->d:Li1/a;

    iget-object v0, p0, Li1/l;->c:Landroid/content/Context;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Li1/j;

    invoke-direct {v1, p2}, Li1/j;-><init>(LY2/j$d;)V

    new-instance v2, Li1/k;

    invoke-direct {v2, p2}, Li1/k;-><init>(LY2/j$d;)V

    invoke-virtual {p1, v0, v1, v2}, Li1/a;->a(Landroid/content/Context;Li1/a$a;Li1/b;)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p1, LY2/i;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Li1/l;->e:Li1/p;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Li1/e;

    invoke-direct {v1, p2}, Li1/e;-><init>(LY2/j$d;)V

    invoke-virtual {v0, p1, v1}, Li1/p;->c(ILi1/p$a;)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p1, LY2/i;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Li1/l;->e:Li1/p;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Li1/h;

    invoke-direct {v1, p2}, Li1/h;-><init>(LY2/j$d;)V

    new-instance v2, Li1/i;

    invoke-direct {v2, p2}, Li1/i;-><init>(LY2/j$d;)V

    invoke-virtual {v0, p1, v1, v2}, Li1/p;->i(ILi1/p$c;Li1/b;)V

    goto :goto_1

    :pswitch_4
    iget-object p1, p1, LY2/i;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Li1/l;->f:Li1/w;

    iget-object v1, p0, Li1/l;->c:Landroid/content/Context;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Li1/c;

    invoke-direct {v2, p2}, Li1/c;-><init>(LY2/j$d;)V

    new-instance v3, Li1/d;

    invoke-direct {v3, p2}, Li1/d;-><init>(LY2/j$d;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Li1/w;->a(ILandroid/content/Context;Li1/w$a;Li1/b;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5c086121 -> :sswitch_4
        -0x3ca2ffb7 -> :sswitch_3
        -0x22583c37 -> :sswitch_2
        0x14b278ba -> :sswitch_1
        0x637dca75 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
