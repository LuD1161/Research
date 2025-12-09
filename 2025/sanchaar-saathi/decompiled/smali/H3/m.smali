.class public abstract LH3/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LI3/F;

.field public static final b:LI3/F;

.field public static final c:LI3/F;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LI3/F;

    const-string v1, "NULL"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LH3/m;->a:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LH3/m;->b:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "DONE"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LH3/m;->c:LI3/F;

    return-void
.end method
