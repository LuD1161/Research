.class public abstract LG3/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LI3/F;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LI3/F;

    const-string v1, "NO_VALUE"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LG3/q;->a:LI3/F;

    return-void
.end method

.method public static final a(LG3/p;Ll3/i;ILF3/a;)LG3/d;
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, LF3/a;->e:LF3/a;

    if-ne p3, v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, LH3/h;

    invoke-direct {v0, p0, p1, p2, p3}, LH3/h;-><init>(LG3/d;Ll3/i;ILF3/a;)V

    return-object v0
.end method
