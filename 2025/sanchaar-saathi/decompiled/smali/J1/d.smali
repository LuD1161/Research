.class public abstract LJ1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu1/c;

.field public static final b:[Lu1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lu1/c;

    const-string v1, "CLIENT_TELEMETRY"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu1/c;-><init>(Ljava/lang/String;J)V

    sput-object v0, LJ1/d;->a:Lu1/c;

    filled-new-array {v0}, [Lu1/c;

    move-result-object v0

    sput-object v0, LJ1/d;->b:[Lu1/c;

    return-void
.end method
