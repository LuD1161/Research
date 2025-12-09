.class public final LD3/K0;
.super LD3/F;
.source "SourceFile"


# static fields
.field public static final g:LD3/K0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LD3/K0;

    invoke-direct {v0}, LD3/K0;-><init>()V

    sput-object v0, LD3/K0;->g:LD3/K0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LD3/F;-><init>()V

    return-void
.end method


# virtual methods
.method public K(Ll3/i;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p2, LD3/O0;->f:LD3/O0$a;

    invoke-interface {p1, p2}, Ll3/i;->d(Ll3/i$c;)Ll3/i$b;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public L(Ll3/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.Unconfined"

    return-object v0
.end method
