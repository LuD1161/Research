.class public abstract LI3/J;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LI3/F;

.field public static final b:Lu3/p;

.field public static final c:Lu3/p;

.field public static final d:Lu3/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LI3/F;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LI3/J;->a:LI3/F;

    sget-object v0, LI3/J$a;->f:LI3/J$a;

    sput-object v0, LI3/J;->b:Lu3/p;

    sget-object v0, LI3/J$b;->f:LI3/J$b;

    sput-object v0, LI3/J;->c:Lu3/p;

    sget-object v0, LI3/J$c;->f:LI3/J$c;

    sput-object v0, LI3/J;->d:Lu3/p;

    return-void
.end method

.method public static final a(Ll3/i;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, LI3/J;->a:LI3/F;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, LI3/N;

    if-eqz v0, :cond_1

    check-cast p1, LI3/N;

    invoke-virtual {p1, p0}, LI3/N;->b(Ll3/i;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sget-object v1, LI3/J;->c:Lu3/p;

    invoke-interface {p0, v0, v1}, Ll3/i;->H(Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {v0, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, LD3/I0;

    invoke-interface {v0, p0, p1}, LD3/I0;->m(Ll3/i;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final b(Ll3/i;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, LI3/J;->b:Lu3/p;

    invoke-interface {p0, v0, v1}, Ll3/i;->H(Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lv3/l;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final c(Ll3/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p0}, LI3/J;->b(Ll3/i;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, LI3/J;->a:LI3/F;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, LI3/N;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, LI3/N;-><init>(Ll3/i;I)V

    sget-object p1, LI3/J;->d:Lu3/p;

    invoke-interface {p0, v0, p1}, Ll3/i;->H(Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p1, v0}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LD3/I0;

    invoke-interface {p1, p0}, LD3/I0;->k(Ll3/i;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
