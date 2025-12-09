.class public final LK3/m;
.super LD3/F;
.source "SourceFile"


# static fields
.field public static final g:LK3/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LK3/m;

    invoke-direct {v0}, LK3/m;-><init>()V

    sput-object v0, LK3/m;->g:LK3/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LD3/F;-><init>()V

    return-void
.end method


# virtual methods
.method public K(Ll3/i;Ljava/lang/Runnable;)V
    .locals 2

    sget-object p1, LK3/c;->m:LK3/c;

    sget-object v0, LK3/l;->h:LK3/i;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, LK3/f;->O(Ljava/lang/Runnable;LK3/i;Z)V

    return-void
.end method

.method public M(I)LD3/F;
    .locals 1

    invoke-static {p1}, LI3/n;->a(I)V

    sget v0, LK3/l;->d:I

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, LD3/F;->M(I)LD3/F;

    move-result-object p1

    return-object p1
.end method
