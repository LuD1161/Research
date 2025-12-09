.class public abstract Landroidx/lifecycle/A;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lm0/a$b;

.field public static final b:Lm0/a$b;

.field public static final c:Lm0/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/A$b;

    invoke-direct {v0}, Landroidx/lifecycle/A$b;-><init>()V

    sput-object v0, Landroidx/lifecycle/A;->a:Lm0/a$b;

    new-instance v0, Landroidx/lifecycle/A$c;

    invoke-direct {v0}, Landroidx/lifecycle/A$c;-><init>()V

    sput-object v0, Landroidx/lifecycle/A;->b:Lm0/a$b;

    new-instance v0, Landroidx/lifecycle/A$a;

    invoke-direct {v0}, Landroidx/lifecycle/A$a;-><init>()V

    sput-object v0, Landroidx/lifecycle/A;->c:Lm0/a$b;

    return-void
.end method

.method public static final a(Lx0/f;)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Landroidx/lifecycle/k;->b()Landroidx/lifecycle/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/g;->b()Landroidx/lifecycle/g$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/g$b;->f:Landroidx/lifecycle/g$b;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroidx/lifecycle/g$b;->g:Landroidx/lifecycle/g$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Lx0/f;->l()Lx0/d;

    move-result-object v0

    const-string v1, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v0, v1}, Lx0/d;->c(Ljava/lang/String;)Lx0/d$c;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Landroidx/lifecycle/B;

    invoke-interface {p0}, Lx0/f;->l()Lx0/d;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Landroidx/lifecycle/I;

    invoke-direct {v0, v2, v3}, Landroidx/lifecycle/B;-><init>(Lx0/d;Landroidx/lifecycle/I;)V

    invoke-interface {p0}, Lx0/f;->l()Lx0/d;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lx0/d;->h(Ljava/lang/String;Lx0/d$c;)V

    invoke-interface {p0}, Landroidx/lifecycle/k;->b()Landroidx/lifecycle/g;

    move-result-object p0

    new-instance v1, Landroidx/lifecycle/z;

    invoke-direct {v1, v0}, Landroidx/lifecycle/z;-><init>(Landroidx/lifecycle/B;)V

    invoke-virtual {p0, v1}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/j;)V

    :cond_2
    return-void
.end method

.method public static final b(Landroidx/lifecycle/I;)Landroidx/lifecycle/C;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/G;

    new-instance v1, Landroidx/lifecycle/A$d;

    invoke-direct {v1}, Landroidx/lifecycle/A$d;-><init>()V

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/G;-><init>(Landroidx/lifecycle/I;Landroidx/lifecycle/G$c;)V

    const-string p0, "androidx.lifecycle.internal.SavedStateHandlesVM"

    const-class v1, Landroidx/lifecycle/C;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/G;->c(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/F;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/C;

    return-object p0
.end method
