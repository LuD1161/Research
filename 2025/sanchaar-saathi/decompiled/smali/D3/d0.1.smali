.class public abstract LD3/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LI3/F;

.field public static final b:LI3/F;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LI3/F;

    const-string v1, "REMOVED_TASK"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LD3/d0;->a:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LD3/d0;->b:LI3/F;

    return-void
.end method

.method public static final synthetic a()LI3/F;
    .locals 1

    sget-object v0, LD3/d0;->b:LI3/F;

    return-object v0
.end method
