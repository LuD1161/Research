.class public final Lz1/L;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final e:Lu1/a;


# direct methods
.method public constructor <init>(Lu1/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1}, Lu1/a;->h()Z

    move-result v0

    const-string v1, "ResolvableConnectionException can only be created with a connection result containing a resolution."

    invoke-static {v0, v1}, Lz1/o;->b(ZLjava/lang/Object;)V

    iput-object p1, p0, Lz1/L;->e:Lu1/a;

    return-void
.end method
