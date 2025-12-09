.class public abstract LD3/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LI3/F;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LI3/F;

    const-string v1, "RESUME_TOKEN"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LD3/n;->a:LI3/F;

    return-void
.end method
