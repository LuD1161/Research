.class public Lg2/g$a;
.super Li2/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg2/g;


# direct methods
.method public constructor <init>(Lg2/g;)V
    .locals 0

    iput-object p1, p0, Lg2/g$a;->a:Lg2/g;

    invoke-direct {p0}, Li2/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object p1, p0, Lg2/g$a;->a:Lg2/g;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lg2/g;->a(Lg2/g;Z)Z

    iget-object p1, p0, Lg2/g$a;->a:Lg2/g;

    invoke-static {p1}, Lg2/g;->b(Lg2/g;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg2/g$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lg2/g$b;->a()V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lg2/g$a;->a:Lg2/g;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lg2/g;->a(Lg2/g;Z)Z

    iget-object p1, p0, Lg2/g$a;->a:Lg2/g;

    invoke-static {p1}, Lg2/g;->b(Lg2/g;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg2/g$b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lg2/g$b;->a()V

    :cond_1
    return-void
.end method
