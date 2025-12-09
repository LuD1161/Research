.class public final Li0/Z$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/Z;
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
    invoke-direct {p0}, Li0/Z$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Li0/I;)Li0/Z;
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Li0/I;->A0()Li0/a0;

    move-result-object p2

    const-string v0, "fragmentManager.specialEffectsControllerFactory"

    invoke-static {p2, v0}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Li0/Z$a;->b(Landroid/view/ViewGroup;Li0/a0;)Li0/Z;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/view/ViewGroup;Li0/a0;)Li0/Z;
    .locals 2

    const-string v0, "container"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lh0/b;->b:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Li0/Z;

    if-eqz v1, :cond_0

    check-cast v0, Li0/Z;

    return-object v0

    :cond_0
    invoke-interface {p2, p1}, Li0/a0;->a(Landroid/view/ViewGroup;)Li0/Z;

    move-result-object p2

    const-string v0, "factory.createController(container)"

    invoke-static {p2, v0}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lh0/b;->b:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p2
.end method
