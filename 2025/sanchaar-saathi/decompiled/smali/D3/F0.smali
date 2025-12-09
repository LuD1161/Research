.class public LD3/F0;
.super LD3/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ll3/i;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, LD3/a;-><init>(Ll3/i;ZZ)V

    return-void
.end method


# virtual methods
.method public l0(Ljava/lang/Throwable;)Z
    .locals 1

    invoke-virtual {p0}, LD3/a;->a()Ll3/i;

    move-result-object v0

    invoke-static {v0, p1}, LD3/H;->a(Ll3/i;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method
